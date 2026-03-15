SELECT * FROM [doctor ] 


CREATE TABLE patient(
patient_id VARCHAR PRIMARY KEY ,
patient_name VARCHAR,
age INT,
gender VARCHAR,
blood_group  VARCHAR,
chronic_disease VARCHAR,
severity_level VARCHAR,
ventilator_required VARCHAR,
oxygen_required VARCHAR,
admission_date DATE,
discharge_date DATE,
insurance_provider VARCHAR,
);
CREATE TABLE Doctor(

doctor_id  VARCHAR PRIMARY KEY,
doctor_name VARCHAR,
specialization VARCHAR,
years_experience INT,
shift_type TIME,
shift_start TIME,
shift_end TIME,
max_daily_capacity INT,
department VARCHAR,
is_on_call VARCHAR,
critical_care_specialist VARCHAR

);


CREATE TABLE Appointment(
appointment_id INT,
doctor_id INT,
patient_id INT,
appointment_datetime DATETIME,
appointment_type VARCHAR,
wait_time_minutes INT,
room_number VARCHAR,
emergency_flag VARCHAR,
--FOREIGN KEY (doctor_id) REFERENCES Doctor (doctor_id),
--FOREIGN KEY (Patient_id) REFERENCES patient(patient_id)
);

CREATE TABLE Treatment(
treatment_id VARCHAR PRIMARY KEY,
doctor_name VARCHAR, 
diagnosis VARCHAR,
icu_required VARCHAR,
ventilator_used VARCHAR,
oxygen_used VARCHAR,
shift_hours INT,
outcome VARCHAR
);
SELECT * FROM Treatment
CREATE TABLE Billing(
bill_id INT,
Treatment_id VARCHAR,
room_charges INT,
doctor_fee INT,
ventilator_charges INT,
oxygen_charges INT,
medication_charges INT,
lab_charges INT,
total_amount INT,
payment_status INT,
patient_id INT
--FOREIGN KEY (patient_id) REFERENCES patient (patient_id)
--FOREIGN KEY (Treatment_id) REFERENCES Treatment(Treatment_id)
);

ALTER TABLE Billing
ADD CONSTRAINT FK_Treatment_id
FOREIGN KEY (Treatment_id) REFERENCES Treatment(Treatment_id)

ALTER TABLE Billing
ADD CONSTRAINT FK_patient_id
FOREIGN KEY (patient_id) REFERENCES patient (patient_id)

ALTER TABLE Appointment
ADD CONSTRAINT FK_doctor_id
FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)

ALTER TABLE Appointment
ADD CONSTRAINT PK_Patient_id
FOREIGN KEY (Patient_id) REFERENCES patient(patient_id)

/* 1. The "Bottleneck" Shift Identification
The Goal: Find shifts where the average wait_time_minutes exceeds 30 minutes.

Insight: If certain shift_types (e.g., Night Shift) consistently have high wait 
times despite low patient volume, it suggests understaffing or inefficient handovers.*/

SELECT TOP 5 wait_time_minutes,appointment_id,shift_type FROM Appointment as [At]
INNER JOIN
Doctor as Dr
ON
[AT].doctor_id=Dr.doctor_id
WHERE shift_type = 'Night'-- OR shift_type= 'Day'
GROUP BY appointment_id, wait_time_minutes,shift_type
Having wait_time_minutes>=150
ORDER BY wait_time_minutes asc


/*1. Clinical Supply-Demand Gap (The "Stress Hour" Analysis)
Business Problem: During specific hours, patient wait_time_minutes might be high, but if the outcome
is "Cancelled" or "Left without being seen," the hospital is losing revenue and patient trust.

Analysis: Group data by appointment_datetime (Hour of the day) and compare it against the Doctor availability 
for that shift.

Key Question: What are the "Golden Hours" (High patient volume + High billing + Low wait times) vs. "Stress Hours"
(High volume + High wait times + High cancellation)?

Data Goal: Recommend a "Surge Staffing" window or a "Shift Overlap" to ensure more doctors 
are on the floor during Stress Hours.*/

--GOLDEN HOURS (High patient volume + High billing + Low wait times)

WITH GOLDEN_Periods AS(

SELECT  COUNT([AT].appointment_id)AS AP_ID ,
AVG(cast(BG.total_amount as float))as total_amount,
DATEPART(HOUR,[AT].appointment_datetime) AS [TIME],
DR.shift_type,
AVG(cast(at.wait_time_minutes as float))AS Wait_min 
FROM billing AS BG

INNER JOIN patient AS PT ON BG.patient_id=PT.patient_id
INNER JOIN Appointment AS [AT] ON PT.patient_id=[AT].patient_id
INNER JOIN Doctor AS DR ON [AT].doctor_id=DR.doctor_id
GROUP BY DATEPART(HOUR, [AT].appointment_datetime), DR.shift_type

)
SELECT TOP 20 AP_ID ,
ROUND(total_amount,2)as total_amount,
[Time],
Shift_Type,
FORMAT(DATEADD(Hour,[Wait_min],0), 'HH:mm')as waits_Time FROM GOLDEN_Periods

  WHERE AP_ID >= (SELECT AVG(AP_ID) FROM GOLDEN_Periods)
  OR Wait_min <= (SELECT AVG(Wait_min) FROM GOLDEN_Periods)
  ORDER BY total_amount DESC
 
 /* Clinical Risk & Throughput Gap (The "Stress Hour" Analysis)
Business Problem: During specific hours, patient wait times may peak alongside a high frequency of severe
medical outcomes (Critical or Deceased). Unlike "Golden Hours," these periods represent high clinical risk 
and potential staff burnout, where the delay in care could lead to adverse patient results rather than just 
lost revenue.

Analysis: Group data by appointment_datetime (Hour of the day) and correlate it with wait_time_minutes 
and the severity of the treatment.outcome.

Key Question: What are the "Stress Hours" 
(High patient volume + High wait times + High percentage of Critical/Deceased cases) vs. 

Data Goal: Identify high-risk windows to recommend a "Senior Specialist Surge" or "Emergency Staff Overlap." 
The objective is to ensure that more experienced clinical staff are present during hours where 
the medical complexity and patient wait times are highest to improve survival rates and reduce 
throughput bottlenecks.*/


 

  WITH Stress_Metrics AS (
    SELECT
        
        DATEPART(HOUR, [AT].appointment_datetime) AS [Hour],
        COUNT([AT].appointment_id) AS Total_Patients, -- High Patient Volume
        AVG(CAST([AT].wait_time_minutes AS FLOAT)) AS Avg_Wait_Min, -- High Wait Times
        -- Count how many cases were severe (Stress Indicator)
        SUM(CASE WHEN TT.outcome IN ('Critical', 'Deceased') THEN 1 ELSE 0 END) AS Severe_Cases_Count
        FROM patient AS PT

    INNER JOIN Appointment AS [AT] ON PT.patient_id = [AT].patient_id
    INNER JOIN billing AS BG ON [AT].patient_id = BG.patient_id
    INNER JOIN treatment AS TT ON BG.treatment_id = TT.treatment_id

    GROUP BY DATEPART(HOUR, [AT].appointment_datetime)
)
SELECT 
    [Hour],
    Total_Patients,
    ROUND(Avg_Wait_Min, 2) AS Avg_Wait,
    Severe_Cases_Count,
    -- Calculate the percentage of critical cases as per the Key Question
    ROUND((CAST(Severe_Cases_Count AS FLOAT) / Total_Patients) * 100, 2) AS Severity_Percentage
    FROM Stress_Metrics
    WHERE 
    Total_Patients >= (SELECT AVG(Total_Patients) FROM Stress_Metrics) -- High Volume
    AND Avg_Wait_Min >= (SELECT AVG(Avg_Wait_Min) FROM Stress_Metrics) -- High Wait
    ORDER BY Severe_Cases_Count DESC, Avg_Wait_Min DESC;


    /*Challenge: Patient Loyalty & "Leakage" Analysis

Business Problem: The hospital is seeing a high number of "One-Time" patients.
If a patient sees a specialist once but never returns for a follow-up, it could
mean two things:

They were successfully cured (Good).

They were unhappy with the wait time or the doctor's service (Bad).

Analysis: Compare the number of New Patients versus Returning Patients for each
doctor and specialization.

Key Question: Which doctors have the highest "Patient Retention Rate" (Patients who have >1 appointment), and is there a correlation between High Wait Times (Stress Hours) and patients never coming back?

Data Goal: Identify "Leakage Points" where patients are dropping off. This 
helps the hospital decide if they need to improve the "Patient Experience" or if 
specific doctors need coaching on communication.*/

--dOCTOR dOCTOR_ID,Name,specilizations,
--appointment patientID,ApptDate,DoctorID
--Billing total_amoutn,patient_id

 WITH PatientFirstVisit AS (
    
    SELECT 
        at.patient_id,
        at.doctor_id,
        CAST(at.appointment_datetime AS DATE) AS FirstVisitDate,
        dr.max_daily_capacity,
       
        COUNT(*) OVER(PARTITION BY at.doctor_id, CAST(at.appointment_datetime AS DATE)) AS Daily_Load
    FROM Appointment at
    JOIN Doctor dr ON at.doctor_id = dr.doctor_id
),
PatientLoyalty AS (
    
    SELECT 
        patient_id,
        COUNT(appointment_id) AS Total_Visits
    FROM Appointment
    GROUP BY patient_id
)

SELECT 
    pf.doctor_id,
    CASE 
        WHEN pf.Daily_Load > pf.max_daily_capacity THEN 'High Stress (Overbooked)'
        ELSE 'Normal/Low Stress'
    END AS Visit_Environment,
    COUNT(pf.patient_id) AS Total_New_Patients,
    SUM(CASE WHEN pl.Total_Visits = 1 THEN 1 ELSE 0 END) AS Never_Returned_Count,
    -- Retention Rate %
    (SUM(CASE WHEN pl.Total_Visits > 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(pf.patient_id)) AS Retention_Rate
FROM PatientFirstVisit pf
JOIN PatientLoyalty pl ON pf.patient_id = pl.patient_id
GROUP BY 
    pf.doctor_id,
    CASE 
        WHEN pf.Daily_Load > pf.max_daily_capacity THEN 'High Stress (Overbooked)'
        ELSE 'Normal/Low Stress'
    END;

/* 1. Resource Allocation

Question: "The challenge mentions that the same team is busy with the 'US Pilot' and a 'Conference' simultaneously.
Using your doctor and appointment tables, how can we identify which specific doctor is working beyond their max_daily_capacity?"

Query Logic: You will need to count the total appointments grouped by doctor_id and compare that count against the max_daily_capacity column.*/

    SELECT dr.doctor_id,dr.doctor_name,
    dr.max_daily_capacity,
    COUNT([at].appointment_id) as total_appointment,
    [at].doctor_id,

  CASE
  WHEN at.appointment_id > dr.max_daily_capacity THEN 'OVERLOADED'
  ELSE 'WITHIN_CAPACITY'
  END AS Work_Load_Status
    FROM Doctor AS dr
    INNER JOIN
    Appointment as [at]
    ON
    dr.doctor_id=[at].doctor_id

    GROUP BY [at].appointment_id ,dr.doctor_id,dr.doctor_name,dr.max_daily_capacity,
    [at].doctor_id
    ORDER BY dr.doctor_id ASC

-----------------------------------------------------------------------------------------
--Staff Load

    SELECT 
    d.doctor_name, 
    d.max_daily_capacity, 
    COUNT(a.appointment_id) AS total_appointments,
    CASE 
        WHEN COUNT(a.appointment_id) > d.max_daily_capacity THEN 'Overloaded'
        ELSE 'Within Capacity'
    END AS workload_status
FROM doctor d
LEFT JOIN appointment a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name, d.max_daily_capacity
ORDER BY doctor_name ASC

------------------------------------------------------------------------------
--Budget variant

-- "Cost Variance per Diagnosis"
--"Which medical conditions (Diagnosis) are exceeding our expected budget, and how does this
--impact our financial readiness for the Regulatory Study?"



--------------------------------------------------------------------------------------------

WITH Global_Metrics AS (
    SELECT AVG(total_amount) AS Average_Bill FROM billing
)
SELECT 
    t.diagnosis,
    SUM(b.total_amount) AS Total_Spent,
    
    (AVG(b.total_amount) - (SELECT Average_Bill FROM Global_Metrics)) AS Budget_Variance,
    
  
    CASE 
        WHEN AVG(b.total_amount) > (SELECT Average_Bill * 1.1 FROM Global_Metrics) THEN 'High Variance (Over)'
        WHEN AVG(b.total_amount) < (SELECT Average_Bill * 0.9 FROM Global_Metrics) THEN 'High Variance (Under)'
        ELSE 'On Track (Near Avg)'
    END AS Budget_Risk_Level

FROM treatment AS t
JOIN billing AS b ON t.treatment_id = b.Treatment_id
GROUP BY t.diagnosis;

--Questions
--"How can we identify financial risks in our treatments by comparing the actual cost per diagnosis against the organization's average 
--bill, and what is the impact on our cash flow readiness?"

-------------------------------------------------------------------------------------------------------------------------------------------------------------

--Monthly Business Review (MBR) Framework

--"How can we effectively monitor staff utilization across our clinics to identify operational bottlenecks, 
--and what data-driven thresholds should trigger the decision to hire new personnel or reallocate doctors to high-demand areas?"

SELECT 
    d.doctor_name,
    d.max_daily_capacity,
    COUNT(a.appointment_id) AS total_appointments,
    -- Utilization % की गणना (Appointments / Capacity * 100)
    ROUND((COUNT(a.appointment_id) * 100.0 / NULLIF(d.max_daily_capacity, 0)), 2) AS utilization_percent,
    
    -- Leadership Decision Logic
    CASE 
        WHEN (COUNT(a.appointment_id) * 100.0 / NULLIF(d.max_daily_capacity, 0)) > 100 THEN 'CRITICAL: Hire/Reallocate'
        WHEN (COUNT(a.appointment_id) * 100.0 / NULLIF(d.max_daily_capacity, 0)) BETWEEN 80 AND 100 THEN 'WARNING: Near Capacity'
        ELSE 'STABLE: Can take more patients'
    END AS leadership_action
FROM doctor d
LEFT JOIN appointment a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name, d.max_daily_capacity
ORDER BY utilization_percent DESC;

---------------------------------------------------------------------------------------------------------------------------
--Logistics Section: Material Readiness

-- The Business Question (Executive Level)
--"How do we measure our clinical readiness for high-severity patients, and what is the specific 
--equipment gap that necessitates an emergency shift in our procurement budget?"

SELECT 
    PT.severity_level,
    SUM(CAST(PT.ventilator_required AS INT)) AS Total_Units_Requested,
    SUM(CAST([TT].ventilator_used AS INT)) AS Units_In_Use,
    
    -- Material Gap (कितने और चाहिए)
    (SUM(CAST(PT.ventilator_required AS INT)) - SUM(CAST([TT].ventilator_used AS INT))) AS Material_Gap,
    
    -- Material Readiness Index (%)
    CASE 
        WHEN SUM(CAST(PT.ventilator_required AS INT)) = 0 THEN 100
        ELSE ROUND((SUM(CAST([TT].ventilator_used AS INT)) * 100.0 / SUM(CAST(PT.ventilator_required AS INT))), 2)
    END AS Readiness_Index_Percent,

    -- Leadership Decision Logic (Procurement Priority)
    CASE 
        WHEN (SUM(CAST(PT.ventilator_required AS INT)) - SUM(CAST([TT].ventilator_used AS INT))) > 5 THEN 'URGENT: Bulk Procurement'
        WHEN (SUM(CAST(PT.ventilator_required AS INT)) - SUM(CAST([TT].ventilator_used AS INT))) BETWEEN 1 AND 5 THEN 'MODERATE: Reallocate from US Pilot'
        ELSE 'STABLE: Monitor Inventory'
    END AS Procurement_Priority

FROM patient AS PT
LEFT JOIN billing AS BG ON PT.patient_id = BG.patient_id
LEFT JOIN treatment AS [TT] ON BG.Treatment_id = [TT].treatment_id
GROUP BY PT.severity_level;

-----------------------------------------------------
--finacial Risk: Budget vs Actual
--"Which medical diagnosis categories are significantly exceeding our historical average cost per 
--treatment, and what specific cost-control or pricing adjustments must leadership implement to
--protect the project's profitability?"


WITH Global_Financials AS (
    -- पूरी कंपनी का औसत बिल (Benchmark)
    SELECT AVG(total_amount) AS Company_Avg_Bill FROM billing
)
SELECT 
    t.diagnosis,
    COUNT(t.treatment_id) AS Total_Cases,
    SUM(b.total_amount) AS Total_Revenue,
    AVG(b.total_amount) AS Avg_Actual_Cost,
    
    -- Variance calculation (वास्तविक बनाम औसत)
    (AVG(b.total_amount) - (SELECT Company_Avg_Bill FROM Global_Financials)) AS Variance_Amount,
    
    -- Leadership Decision Logic (Cost Control Action)
    CASE 
        WHEN AVG(b.total_amount) > (SELECT Company_Avg_Bill * 1.25 FROM Global_Financials) THEN 'CRITICAL: Strict Cost Control Required'
        WHEN AVG(b.total_amount) > (SELECT Company_Avg_Bill FROM Global_Financials) THEN 'HIGH: Review Service Pricing'
        ELSE 'EFFICIENT: Under Benchmark'
    END AS Financial_Action_Plan

FROM treatment AS t
JOIN billing AS b ON t.treatment_id = b.Treatment_id
GROUP BY t.diagnosis
ORDER BY Avg_Actual_Cost DESC;
