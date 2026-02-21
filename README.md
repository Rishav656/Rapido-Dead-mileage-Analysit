# Rapido Marketplace Dynamics & Cancellation Analysis

Project Overview:-

This project focuses on analyzing the "Marketplace" dynamics of Rapido, India's leading bike-taxi aggregator. By analyzing high-dimensional ride data, I aimed to solve the critical business problem of "Ghost Demand"—ride requests that fail due to supply-side inefficiencies rather than technical glitches. The objective was to optimize the balance between Captain (driver) availability and User demand to maximize completed rides and revenue.

Business Challenges Addressed :-

Cancellation Patterns: Investigated why certain "Hotspots" experienced a 40% higher cancellation rate. By segmenting Cancellation_Reason against Pickup_Area, I identified that the primary driver was "Distance-to-Pickup" rather than user intent.

Revenue Leakage: Calculated the "Lost Revenue per Hour" during peak shifts, identifying specific "Stress Hours" where demand outpaced supply by $2.5\times$.
Dead Mileage: Analyzed "Sinks" (areas with many drops but few pickups) to reduce the time Captains spend driving without a passenger.Technical Methodology

Technical Methodology:-

Data Cleaning & Transformation: Handled missing values in trip timestamps and normalized fare structures using Python (Pandas/NumPy).

Exploratory Data Analysis (EDA): Performed RFM (Recency, Frequency, Monetary) analysis to segment "Power Users" for loyalty programs.

Spatial Analysis: Used SQL (Window Functions & Joins) to map demand clusters and calculate Revenue per KM across different service levels (Bike vs. Auto).

Visualization: Developed Heatmaps and trend lines in Tableau/Power BI to communicate geographic supply gaps to non-technical stakeholders.

Spatial Analysis: Used SQL (Window Functions & Joins) to map demand clusters and calculate Revenue per KM across different service levels (Bike vs. Auto).

Visualization: Developed Heatmaps and trend lines in Tableau/Power BI to communicate geographic supply gaps to non-technical stakeholders.

Key Insights & Impact:-

The analysis revealed that implementing a "Dynamic Incentive" model in top-3 high-churn areas could potentially reduce cancellations by 15%. Furthermore, shifting Captain distributions toward "Source" areas during "Golden Hours" (High Completion + High Fare) showed a projected revenue increase of 12% per fleet unit.
