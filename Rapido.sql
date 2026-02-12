--Rider_id,Date,Time,customer_id,Vechile_Type,pickup_area,,Drop_Area,,Distance_Area,Fare_INR,Status,Cancellation_Reason,Serive_level,Pyment_Method
CREATE TABLE Rapido_Captain(
Row_ID VARCHAR (5),
Rider_ID VARCHAR (10)PRIMARY KEY,
Ride_Date Date,
Rider_Time Time,
Customer_id VARCHAR (15),
Vechile_Type VARCHAR (20),
Pickup_Area VARCHAR (30),
Drop_Area VARCHAR (30),
Distance_Km DECIMAL(4,1),
Fare_INR INT,
[Status] VARCHAR(40),
Cancellation_Reasons VARCHAR (30),
Service_level VARCHAR (20),
Payment_Method VARCHAR (30)
);

INSERT INTO Rapido_Captain VALUES --(Rider_ID,Ride_Date,Rider_Time,Customer_id,
--Vechile_Type,Pickup_Area,Drop_Area,Distance_km,Fare_INR,[Status],Cancellation_Reasons,Service_level,Payment_Method)VALUES
--INSERT INTO Rapido_Rides (Row_ID, Ride_ID, Ride_Date, Ride_Time, Customer_ID, Vehicle_Type, Pickup_Area, Drop_Area, Distance_km, Fare_INR, Ride_Status, Cancellation_Reason, Service_Level, Payment_Method) VALUES
(1, 'R-1001', '2024-01-11', '18:15:00', 'C-534', 'Cab', 'Hebbal', 'Hebbal', 11.8, 354, 'Completed', 'None', 'Economic', 'Wallet'),
(2, 'R-1002', '2024-01-07', '15:00:00', 'C-514', 'Cab', 'Electronic City', 'Hebbal', 2.4, 72, 'Cancelled', 'Captain Late', 'Economic', 'Card'),
(3, 'R-1003', '2024-01-20', '20:15:00', 'C-532', 'Bike', 'Indiranagar', 'Hebbal', 3.3, 59, 'Completed', 'None', 'Basic', 'Cash'),
(4, 'R-1004', '2024-01-20', '16:15:00', 'C-517', 'Auto Share', 'Indiranagar', 'Bellandur', 9.4, 112, 'Completed', 'None', 'Economic', 'Card'),
(5, 'R-1005', '2024-01-09', '22:30:00', 'C-536', 'Parcel', 'Whitefield', 'Indiranagar', 11.9, 178, 'Completed', 'None', 'Delivery', 'Card'),
(6, 'R-1006', '2024-01-14', '20:15:00', 'C-550', 'Auto Share', 'Jayanagar', 'MG Road', 3.0, 36, 'Completed', 'None', 'Economic', 'Wallet'),
(7, 'R-1007', '2024-01-06', '12:00:00', 'C-533', 'Auto Share', 'Koramangala', 'Koramangala', 7.3, 87, 'Completed', 'None', 'Economic', 'Cash'),
(8, 'R-1008', '2024-01-15', '16:30:00', 'C-502', 'Bike', 'Marathahalli', 'Hebbal', 3.4, 61, 'Completed', 'None', 'Basic', 'Cash'),
(9, 'R-1009', '2024-01-16', '08:30:00', 'C-536', 'Cab', 'Marathahalli', 'Koramangala', 3.4, 153, 'Completed', 'None', 'Premium', 'Card'),
(10, 'R-1010', '2024-01-07', '11:45:00', 'C-550', 'Auto', 'HSR Layout', 'Indiranagar', 6.7, 120, 'Completed', 'None', 'Basic', 'Cash'),
(11, 'R-1011', '2024-01-03', '16:45:00', 'C-501', 'Cab', 'MG Road', 'Indiranagar', 3.7, 166, 'Completed', 'None', 'Premium', 'UPI'),
(12, 'R-1012', '2024-01-10', '21:00:00', 'C-526', 'Cab', 'Bellandur', 'Electronic City', 9.1, 409, 'Completed', 'None', 'Premium', 'UPI'),
(13, 'R-1013', '2024-01-07', '11:45:00', 'C-536', 'Bike', 'Marathahalli', 'Jayanagar', 6.5, 117, 'Completed', 'None', 'Basic', 'Wallet'),
(14, 'R-1014', '2024-01-14', '08:00:00', 'C-508', 'Parcel', 'Koramangala', 'HSR Layout', 2.3, 34, 'Completed', 'None', 'Delivery', 'Wallet'),
(15, 'R-1015', '2024-01-10', '14:45:00', 'C-510', 'Auto', 'Electronic City', 'Whitefield', 4.7, 84, 'Completed', 'None', 'Basic', 'UPI'),
(16, 'R-1016', '2024-01-17', '15:30:00', 'C-519', 'Parcel', 'HSR Layout', 'Marathahalli', 1.5, 22, 'Completed', 'None', 'Delivery', 'Card'),
(17, 'R-1017', '2024-01-04', '22:00:00', 'C-508', 'Cab', 'Hebbal', 'Hebbal', 2.7, 81, 'Cancelled', 'Technical Issue', 'Economic', 'Wallet'),
(18, 'R-1018', '2024-01-11', '10:15:00', 'C-507', 'Auto Share', 'HSR Layout', 'HSR Layout', 4.9, 58, 'Completed', 'None', 'Economic', 'Wallet'),
(19, 'R-1019', '2024-01-07', '18:45:00', 'C-547', 'Parcel', 'MG Road', 'Electronic City', 7.1, 106, 'Completed', 'None', 'Delivery', 'Card'),
(20, 'R-1020', '2024-01-08', '12:00:00', 'C-510', 'Bike', 'Bellandur', 'Jayanagar', 2.6, 46, 'Completed', 'None', 'Basic', 'Wallet'),
(21, 'R-1021', '2024-01-04', '07:15:00', 'C-504', 'Auto', 'Bellandur', 'Koramangala', 11.8, 212, 'Cancelled', 'Wrong Location', 'Basic', 'Cash'),
(22, 'R-1022', '2024-01-15', '14:45:00', 'C-507', 'Cab', 'Koramangala', 'HSR Layout', 5.7, 256, 'Completed', 'None', 'Premium', 'Card'),
(23, 'R-1023', '2024-01-08', '11:15:00', 'C-517', 'Auto', 'Bellandur', 'Electronic City', 4.3, 77, 'Completed', 'None', 'Basic', 'Cash'),
(24, 'R-1024', '2024-01-14', '21:45:00', 'C-550', 'Auto', 'Bellandur', 'HSR Layout', 11.4, 205, 'Completed', 'None', 'Basic', 'Cash'),
(25, 'R-1025', '2024-01-15', '14:30:00', 'C-516', 'Bike', 'Indiranagar', 'Koramangala', 2.3, 41, 'Completed', 'None', 'Basic', 'Wallet'),
(26, 'R-1026', '2024-01-16', '20:45:00', 'C-511', 'Parcel', 'Electronic City', 'Indiranagar', 5.6, 84, 'Completed', 'None', 'Delivery', 'UPI'),
(27, 'R-1027', '2024-01-06', '20:15:00', 'C-528', 'Parcel', 'Electronic City', 'Marathahalli', 8.2, 122, 'Cancelled', 'Changed Mind', 'Delivery', 'Cash'),
(28, 'R-1028', '2024-01-19', '20:15:00', 'C-515', 'Parcel', 'Indiranagar', 'Marathahalli', 1.6, 24, 'Completed', 'None', 'Delivery', 'Card'),
(29, 'R-1029', '2024-01-01', '13:45:00', 'C-522', 'Cab', 'Marathahalli', 'Electronic City', 8.8, 264, 'Completed', 'None', 'Economic', 'Wallet'),
(30, 'R-1030', '2024-01-08', '10:00:00', 'C-546', 'Auto', 'HSR Layout', 'Marathahalli', 2.1, 37, 'Completed', 'None', 'Basic', 'Cash'),
(31, 'R-1031', '2024-01-19', '09:15:00', 'C-528', 'Bike', 'Marathahalli', 'HSR Layout', 9.5, 171, 'Completed', 'None', 'Basic', 'Cash'),
(32, 'R-1032', '2024-01-08', '12:15:00', 'C-518', 'Bike', 'Whitefield', 'Indiranagar', 2.4, 43, 'Completed', 'None', 'Basic', 'UPI'),
(33, 'R-1033', '2024-01-10', '18:00:00', 'C-513', 'Auto Share', 'Jayanagar', 'MG Road', 8.8, 105, 'Completed', 'None', 'Economic', 'UPI'),
(34, 'R-1034', '2024-01-16', '14:00:00', 'C-536', 'Bike', 'HSR Layout', 'Koramangala', 6.1, 109, 'Completed', 'None', 'Basic', 'UPI'),
(35, 'R-1035', '2024-01-09', '19:30:00', 'C-510', 'Parcel', 'HSR Layout', 'Bellandur', 10.4, 156, 'Completed', 'None', 'Delivery', 'UPI'),
(36, 'R-1036', '2024-01-19', '16:15:00', 'C-533', 'Auto', 'Whitefield', 'Bellandur', 2.2, 39, 'Completed', 'None', 'Basic', 'Wallet'),
(37, 'R-1037', '2024-01-16', '14:45:00', 'C-549', 'Bike', 'Indiranagar', 'Whitefield', 7.9, 142, 'Completed', 'None', 'Basic', 'Card'),
(38, 'R-1038', '2024-01-10', '14:15:00', 'C-537', 'Cab', 'Hebbal', 'Hebbal', 11.5, 517, 'Cancelled', 'Technical Issue', 'Premium', 'Card'),
(39, 'R-1039', '2024-01-13', '07:45:00', 'C-550', 'Cab', 'Electronic City', 'HSR Layout', 7.2, 216, 'Completed', 'None', 'Economic', 'Card'),
(40, 'R-1040', '2024-01-07', '09:45:00', 'C-521', 'Bike', 'HSR Layout', 'Koramangala', 2.0, 36, 'Completed', 'None', 'Basic', 'Cash'),
(41, 'R-1041', '2024-01-16', '10:45:00', 'C-520', 'Auto Share', 'Whitefield', 'HSR Layout', 3.3, 39, 'Cancelled', 'Captain Late', 'Economic', 'Card'),
(42, 'R-1042', '2024-01-02', '17:15:00', 'C-512', 'Cab', 'Koramangala', 'MG Road', 2.2, 66, 'Completed', 'None', 'Economic', 'Card'),
(43, 'R-1043', '2024-01-01', '10:30:00', 'C-517', 'Auto Share', 'Hebbal', 'Electronic City', 9.1, 109, 'Completed', 'None', 'Economic', 'Card'),
(44, 'R-1044', '2024-01-11', '15:00:00', 'C-533', 'Parcel', 'Whitefield', 'Hebbal', 8.0, 120, 'Completed', 'None', 'Delivery', 'Card'),
(45, 'R-1045', '2024-01-10', '18:00:00', 'C-524', 'Auto Share', 'Whitefield', 'Indiranagar', 4.8, 57, 'Completed', 'None', 'Economic', 'Cash'),
(46, 'R-1046', '2024-01-14', '11:45:00', 'C-539', 'Auto', 'HSR Layout', 'Whitefield', 4.7, 84, 'Completed', 'None', 'Basic', 'Wallet'),
(47, 'R-1047', '2024-01-13', '21:00:00', 'C-544', 'Cab', 'Koramangala', 'HSR Layout', 1.5, 67, 'Completed', 'None', 'Premium', 'UPI'),
(48, 'R-1048', '2024-01-02', '07:00:00', 'C-511', 'Bike', 'Hebbal', 'Jayanagar', 6.1, 109, 'Completed', 'None', 'Basic', 'UPI'),
(49, 'R-1049', '2024-01-05', '21:00:00', 'C-549', 'Auto', 'Bellandur', 'HSR Layout', 5.5, 99, 'Completed', 'None', 'Basic', 'Wallet'),
(50, 'R-1050', '2024-01-03', '09:45:00', 'C-537', 'Auto Share', 'Electronic City', 'Indiranagar', 3.2, 38, 'Completed', 'None', 'Economic', 'Wallet'),
(51, 'R-1051', '2024-01-08', '09:45:00', 'C-536', 'Cab', 'Koramangala', 'Jayanagar', 11.6, 522, 'Completed', 'None', 'Premium', 'Card'),
(52, 'R-1052', '2024-01-11', '19:00:00', 'C-520', 'Bike', 'Koramangala', 'Marathahalli', 9.4, 169, 'Completed', 'None', 'Basic', 'Cash'),
(53, 'R-1053', '2024-01-05', '11:15:00', 'C-537', 'Auto Share', 'Koramangala', 'Hebbal', 6.4, 76, 'Completed', 'None', 'Economic', 'Card'),
(54, 'R-1054', '2024-01-08', '12:45:00', 'C-524', 'Cab', 'MG Road', 'Jayanagar', 10.9, 327, 'Cancelled', 'Changed Mind', 'Economic', 'Cash'),
(55, 'R-1055', '2024-01-02', '13:30:00', 'C-511', 'Bike', 'Jayanagar', 'Electronic City', 4.5, 81, 'Completed', 'None', 'Basic', 'Cash'),
(56, 'R-1056', '2024-01-06', '21:30:00', 'C-532', 'Auto Share', 'Indiranagar', 'Indiranagar', 4.3, 51, 'Completed', 'None', 'Economic', 'Card'),
(57, 'R-1057', '2024-01-09', '17:30:00', 'C-537', 'Auto Share', 'MG Road', 'Koramangala', 8.3, 99, 'Completed', 'None', 'Economic', 'Cash'),
(58, 'R-1058', '2024-01-14', '16:30:00', 'C-544', 'Auto', 'Jayanagar', 'Electronic City', 6.9, 124, 'Completed', 'None', 'Basic', 'Cash'),
(59, 'R-1059', '2024-01-06', '12:00:00', 'C-542', 'Auto', 'Hebbal', 'Jayanagar', 6.4, 115, 'Completed', 'None', 'Basic', 'Cash'),
(60, 'R-1060', '2024-01-06', '22:15:00', 'C-542', 'Bike', 'Koramangala', 'MG Road', 3.0, 54, 'Cancelled', 'High Fare', 'Basic', 'Cash'),
(61, 'R-1061', '2024-01-14', '14:30:00', 'C-545', 'Auto', 'Whitefield', 'MG Road', 3.4, 61, 'Completed', 'None', 'Basic', 'Card'),
(62, 'R-1062', '2024-01-02', '14:00:00', 'C-547', 'Parcel', 'Bellandur', 'Whitefield', 2.9, 43, 'Completed', 'None', 'Delivery', 'UPI'),
(63, 'R-1063', '2024-01-09', '18:00:00', 'C-514', 'Auto', 'Jayanagar', 'Jayanagar', 8.3, 149, 'Completed', 'None', 'Basic', 'UPI'),
(64, 'R-1064', '2024-01-16', '12:00:00', 'C-547', 'Bike', 'HSR Layout', 'Koramangala', 6.4, 115, 'Completed', 'None', 'Basic', 'Card'),
(65, 'R-1065', '2024-01-11', '15:00:00', 'C-525', 'Bike', 'Koramangala', 'Jayanagar', 7.3, 131, 'Completed', 'None', 'Basic', 'Card'),
(66, 'R-1066', '2024-01-10', '17:30:00', 'C-543', 'Auto Share', 'Electronic City', 'Whitefield', 4.0, 48, 'Completed', 'None', 'Economic', 'Card'),
(67, 'R-1067', '2024-01-14', '13:45:00', 'C-530', 'Bike', 'Whitefield', 'Jayanagar', 3.9, 70, 'Cancelled', 'High Fare', 'Basic', 'UPI'),
(68, 'R-1068', '2024-01-20', '15:45:00', 'C-519', 'Auto', 'Marathahalli', 'Electronic City', 5.3, 95, 'Completed', 'None', 'Basic', 'UPI'),
(69, 'R-1069', '2024-01-10', '18:00:00', 'C-502', 'Auto', 'Bellandur', 'Hebbal', 6.1, 109, 'Cancelled', 'Wrong Location', 'Basic', 'Cash'),
(70, 'R-1070', '2024-01-18', '19:45:00', 'C-505', 'Cab', 'MG Road', 'Electronic City', 2.2, 99, 'Completed', 'None', 'Premium', 'UPI'),
(71, 'R-1071', '2024-01-12', '17:30:00', 'C-526', 'Auto', 'Indiranagar', 'MG Road', 9.6, 172, 'Completed', 'None', 'Basic', 'Wallet'),
(72, 'R-1072', '2024-01-08', '22:15:00', 'C-543', 'Bike', 'Indiranagar', 'Koramangala', 2.4, 43, 'Completed', 'None', 'Basic', 'UPI'),
(73, 'R-1073', '2024-01-15', '14:15:00', 'C-529', 'Cab', 'Whitefield', 'Hebbal', 10.7, 321, 'Completed', 'None', 'Economic', 'UPI'),
(74, 'R-1074', '2024-01-07', '15:45:00', 'C-501', 'Bike', 'Indiranagar', 'Hebbal', 10.0, 180, 'Completed', 'None', 'Basic', 'Wallet'),
(75, 'R-1075', '2024-01-06', '08:15:00', 'C-509', 'Auto Share', 'Hebbal', 'Marathahalli', 10.1, 121, 'Cancelled', 'High Fare', 'Economic', 'Card'),
(76, 'R-1076', '2024-01-09', '09:30:00', 'C-507', 'Cab', 'Indiranagar', 'Marathahalli', 9.4, 282, 'Completed', 'None', 'Economic', 'Card'),
(77, 'R-1077', '2024-01-01', '20:15:00', 'C-515', 'Cab', 'Jayanagar', 'Whitefield', 8.2, 245, 'Cancelled', 'High Fare', 'Economic', 'UPI'),
(78, 'R-1078', '2024-01-13', '12:00:00', 'C-548', 'Auto Share', 'Bellandur', 'Whitefield', 9.1, 109, 'Completed', 'None', 'Economic', 'Card'),
(79, 'R-1079', '2024-01-13', '16:00:00', 'C-512', 'Parcel', 'Marathahalli', 'Whitefield', 2.4, 36, 'Cancelled', 'Captain Late', 'Delivery', 'Card'),
(80, 'R-1080', '2024-01-02', '08:15:00', 'C-545', 'Parcel', 'MG Road', 'Whitefield', 4.3, 64, 'Completed', 'None', 'Delivery', 'UPI'),
(81, 'R-1081', '2024-01-05', '11:45:00', 'C-511', 'Auto', 'HSR Layout', 'Indiranagar', 11.3, 203, 'Completed', 'None', 'Basic', 'Wallet'),
(82, 'R-1082', '2024-01-13', '20:45:00', 'C-500', 'Parcel', 'Whitefield', 'Hebbal', 3.7, 55, 'Completed', 'None', 'Delivery', 'Wallet'),
(83, 'R-1083', '2024-01-20', '21:45:00', 'C-534', 'Parcel', 'Koramangala', 'Marathahalli', 6.1, 91, 'Completed', 'None', 'Delivery', 'UPI'),
(84, 'R-1084', '2024-01-19', '08:30:00', 'C-501', 'Bike', 'Whitefield', 'Whitefield', 2.3, 41, 'Completed', 'None', 'Basic', 'Card'),
(85, 'R-1085', '2024-01-19', '17:45:00', 'C-518', 'Parcel', 'Jayanagar', 'Marathahalli', 5.7, 85, 'Completed', 'None', 'Delivery', 'UPI'),
(86, 'R-1086', '2024-01-17', '09:00:00', 'C-521', 'Auto', 'Koramangala', 'HSR Layout', 9.8, 176, 'Cancelled', 'Changed Mind', 'Basic', 'Card'),
(87, 'R-1087', '2024-01-03', '10:00:00', 'C-525', 'Parcel', 'Whitefield', 'Indiranagar', 2.0, 30, 'Completed', 'None', 'Delivery', 'Cash'),
(88, 'R-1088', '2024-01-12', '21:00:00', 'C-522', 'Cab', 'HSR Layout', 'Hebbal', 8.6, 258, 'Completed', 'None', 'Economic', 'Wallet'),
(89, 'R-1089', '2024-01-18', '16:30:00', 'C-546', 'Bike', 'Whitefield', 'Jayanagar', 7.7, 138, 'Completed', 'None', 'Basic', 'Cash'),
(90, 'R-1090', '2024-01-17', '16:15:00', 'C-504', 'Auto', 'Bellandur', 'Bellandur', 6.6, 118, 'Completed', 'None', 'Basic', 'Wallet'),
(91, 'R-1091', '2024-01-06', '20:00:00', 'C-508', 'Cab', 'MG Road', 'Bellandur', 9.1, 409, 'Cancelled', 'Technical Issue', 'Premium', 'Card'),
(92, 'R-1092', '2024-01-17', '09:45:00', 'C-530', 'Cab', 'Whitefield', 'Koramangala', 3.2, 96, 'Completed', 'None', 'Economic', 'Card'),
(93, 'R-1093', '2024-01-02', '10:00:00', 'C-504', 'Parcel', 'Marathahalli', 'Jayanagar', 9.3, 139, 'Cancelled', 'Wrong Location', 'Delivery', 'Wallet'),
(94, 'R-1094', '2024-01-04', '17:00:00', 'C-505', 'Cab', 'MG Road', 'MG Road', 11.8, 354, 'Completed', 'None', 'Economic', 'Card'),
(95, 'R-1095', '2024-01-09', '20:15:00', 'C-511', 'Auto Share', 'MG Road', 'HSR Layout', 9.3, 111, 'Completed', 'None', 'Economic', 'Wallet'),
(96, 'R-1096', '2024-01-02', '22:30:00', 'C-543', 'Bike', 'MG Road', 'Indiranagar', 7.8, 140, 'Completed', 'None', 'Basic', 'Card'),
(97, 'R-1097', '2024-01-16', '20:15:00', 'C-549', 'Bike', 'HSR Layout', 'Bellandur', 8.0, 144, 'Cancelled', 'Changed Mind', 'Basic', 'Wallet'),
(98, 'R-1098', '2024-01-11', '13:15:00', 'C-550', 'Bike', 'Koramangala', 'Marathahalli', 2.9, 52, 'Completed', 'None', 'Basic', 'Card'),
(99, 'R-1099', '2024-01-12', '13:00:00', 'C-540', 'Auto', 'Electronic City', 'Whitefield', 2.6, 46, 'Completed', 'None', 'Basic', 'Card'),
(100, 'R-1100', '2024-01-11', '13:30', 'C-542', 'Bike', 'Whitefield', 'Koramangala', 11.2, 201, 'Cancelled', 'Changed Mind', 'Basic', 'Cash');

--Customer_id,User_name,,gender,age,phone_no,Email_id,singup_Date,Total_Ride_Booked,,User_Rating by_captain,Preffered Payment_mode,Perrefeleed_vechile_Type,Wallet_balance,Home_area,
--Work_area,subscription_Type
CREATE TABLE Rapido_User (
    Customer_ID VARCHAR(10) PRIMARY KEY,
     Rider_ID VARCHAR (10) REFERENCES Rapido_Captain(Rider_ID),
    [User_Name] VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Phone_Number VARCHAR(15),
    Email_ID VARCHAR(50),
    Signup_Date DATE,
    Total_Rides_Booked INT,
    User_Rating_by_Captain DECIMAL(3,2),
    Preferred_Payment_Mode VARCHAR(20),
    Preferred_Vehicle_Type VARCHAR(20),
    Wallet_Balance_INR DECIMAL(10,2),
    Home_Area VARCHAR(50),
    Work_Area VARCHAR(50),
    Subscription_Type VARCHAR(20) -- e.g., Basic, Gold, Platinum
);

INSERT INTO Rapido_User Values 
('C-501','R-1001', 'Arjun Sharma', 'Male', 34, '+91-8273645510', 'arjun.sharma@example.com', '2023-05-12', 45, 4.82, 'UPI', 'Bike', 450.50, 'Indiranagar', 'Whitefield', 'Gold'),
('C-502','R-1002', 'Priya Mehta', 'Female', 28, '+91-9123847560', 'priya.mehta@example.com', '2023-01-20', 12, 4.15, 'Cash', 'Auto', 50.00, 'HSR Layout', 'Koramangala', 'Basic'),
('C-503','R-1003', 'Rahul Singh', 'Male', 31, '+91-8877665544', 'rahul.singh@example.com', '2023-03-22', 88, 4.90, 'Wallet', 'Cab (Premium)', 1200.75, 'Bellandur', 'MG Road', 'Platinum'),
('C-504','R-1004', 'Sneha Tiwari', 'Female', 22, '+91-7002938471', 'sneha.tiwari@example.com', '2023-11-05', 5, 3.80, 'Card', 'Bike', 15.00, 'Whitefield', 'Marathahalli', 'Basic'),
('C-505','R-1005', 'Amit Deshmukh', 'Male', 45, '+91-9928374650', 'amit.deshmukh@example.com', '2023-06-18', 124, 4.75, 'UPI', 'Auto Share', 890.20, 'Jayanagar', 'Hebbal', 'Gold'),
('C-506','R-1006', 'Neha Gupta', 'Female', 27, '+91-8123344556', 'neha.gupta@example.com', '2023-09-01', 32, 4.40, 'Wallet', 'Parcel', 210.00, 'MG Road', 'Indiranagar', 'Basic'),
('C-507','R-1007', 'Vikram Reddy', 'Male', 35, '+91-9845012345', 'vikram.reddy@example.com', '2023-02-14', 67, 4.60, 'Card', 'Cab (Economy)', 0.00, 'Electronic City', 'Bellandur', 'Gold'),
('C-508','R-1008', 'Anjali Nair', 'Female', 26, '+91-7760123456', 'anjali.nair@example.com', '2023-04-30', 19, 4.25, 'Cash', 'Bike', 120.40, 'Koramangala', 'HSR Layout', 'Basic'),
('C-509','R-1009', 'Manoj Verma', 'Male', 40, '+91-9008123456', 'manoj.verma@example.com', '2023-12-25', 150, 4.95, 'UPI', 'Cab (Premium)', 1560.00, 'Hebbal', 'Whitefield', 'Platinum'),
('C-510','R-1010', 'Riya Patel', 'Female', 23, '+91-8050123456', 'riya.patel@example.com', '2023-07-07', 41, 4.30, 'Wallet', 'Auto', 340.50, 'Marathahalli', 'Jayanagar', 'Gold'),
('C-511', 'R-1011', 'Deepak Bhat', 'Male', 29, '+91-9234567890', 'deepak.bhat@example.com', '2023-08-15', 55, 4.70, 'UPI', 'Bike', 100.00, 'Indiranagar', 'MG Road', 'Gold'),
('C-512', 'R-1012', 'Anil Verma', 'Male', 33, '+91-8147012345', 'anil.verma@example.com', '2023-05-05', 22, 4.10, 'Cash', 'Auto Share', 0.00, 'HSR Layout', 'Bellandur', 'Basic'),
('C-513', 'R-1013', 'Swati Sharma', 'Female', 25, '+91-9886012345', 'swati.sharma@example.com', '2023-02-28', 75, 4.85, 'UPI', 'Cab (Economy)', 500.00, 'Whitefield', 'Indiranagar', 'Platinum'),
('C-514', 'R-1014', 'Rashmi Kulkarni', 'Female', 30, '+91-7022012345', 'rashmi.kulkarni@example.com', '2023-09-12', 14, 4.00, 'Card', 'Parcel', 45.00, 'Koramangala', 'Marathahalli', 'Basic'),
('C-515', 'R-1015', 'Vijay Gupta', 'Male', 42, '+91-9141012345', 'vijay.gupta@example.com', '2023-04-18', 110, 4.65, 'Wallet', 'Cab (Premium)', 2000.00, 'Electronic City', 'MG Road', 'Gold'),
('C-516', 'R-1016', 'Pooja Reddy', 'Female', 24, '+91-8050987654', 'pooja.reddy@example.com', '2023-11-20', 30, 4.40, 'UPI', 'Bike', 150.00, 'Bellandur', 'Hebbal', 'Basic'),
('C-517', 'R-1017', 'Manoj Singh', 'Male', 38, '+91-9742012345', 'manoj.singh@example.com', '2023-06-01', 95, 4.78, 'Card', 'Auto', 720.00, 'Jayanagar', 'Electronic City', 'Platinum'),
('C-518', 'R-1018', 'Anita Nair', 'Female', 41, '+91-8884012345', 'anita.nair@example.com', '2023-07-15', 48, 4.35, 'Cash', 'Auto Share', 50.50, 'Hebbal', 'HSR Layout', 'Gold'),
('C-519', 'R-1019', 'Rajesh Tiwari', 'Male', 36, '+91-9164012345', 'rajesh.tiwari@example.com', '2023-10-25', 18, 4.20, 'Wallet', 'Parcel', 10.00, 'Marathahalli', 'Whitefield', 'Basic'),
('C-520', 'R-1020', 'Sunita Bhat', 'Female', 32, '+91-7259012345', 'sunita.bhat@example.com', '2023-01-10', 60, 4.55, 'UPI', 'Cab (Economy)', 315.00, 'MG Road', 'Koramangala', 'Gold'),
('C-521', 'R-1021', 'Kiran Mehta', 'Male', 26, '+91-8277012345', 'kiran.mehta@example.com', '2023-03-05', 102, 4.92, 'Card', 'Bike', 1100.00, 'Indiranagar', 'Jayanagar', 'Platinum'),
('C-522', 'R-1022', 'Megha Deshmukh', 'Female', 29, '+91-9900012345', 'megha.deshmukh@example.com', '2023-08-20', 37, 4.45, 'UPI', 'Auto', 225.00, 'HSR Layout', 'Marathahalli', 'Gold'),
('C-523', 'R-1023', 'Deepak Verma', 'Male', 30, '+91-7019012345', 'deepak.verma@example.com', '2023-12-01', 11, 3.90, 'Cash', 'Cab (Premium)', 0.00, 'Whitefield', 'Electronic City', 'Basic'),
('C-524', 'R-1024', 'Kavita Sharma', 'Female', 34, '+91-9448012345', 'kavita.sharma@example.com', '2023-05-15', 52, 4.50, 'Wallet', 'Bike', 85.00, 'Koramangala', 'Indiranagar', 'Gold'),
('C-525', 'R-1025', 'Sanjay Singh', 'Male', 39, '+91-9945012345', 'sanjay.singh@example.com', '2023-06-30', 81, 4.68, 'UPI', 'Auto Share', 540.00, 'Bellandur', 'Jayanagar', 'Platinum'),
('C-526', 'R-1026', 'Anjali Gupta', 'Female', 27, '+91-8095012345', 'anjali.gupta@example.com', '2023-07-25', 25, 4.28, 'Card', 'Parcel', 120.00, 'Jayanagar', 'HSR Layout', 'Basic'),
('C-527', 'R-1027', 'Rahul Reddy', 'Male', 32, '+91-9123456781', 'rahul.reddy@example.com', '2023-02-10', 63, 4.62, 'UPI', 'Cab (Economy)', 290.00, 'MG Road', 'Whitefield', 'Gold'),
('C-528', 'R-1028', 'Sneha Nair', 'Female', 25, '+91-7760123981', 'sneha.nair@example.com', '2023-11-15', 44, 4.48, 'Cash', 'Bike', 65.00, 'Hebbal', 'Marathahalli', 'Basic'),
('C-529', 'R-1029', 'Amit Tiwari', 'Male', 44, '+91-9008123981', 'amit.tiwari@example.com', '2023-04-05', 135, 4.98, 'Wallet', 'Cab (Premium)', 1800.00, 'Marathahalli', 'Electronic City', 'Platinum'),
('C-530', 'R-1030', 'Pooja Patel', 'Female', 26, '+91-8050123981', 'pooja.patel@example.com', '2023-09-20', 39, 4.38, 'UPI', 'Auto', 145.50, 'Electronic City', 'Bellandur', 'Gold'),
('C-531', 'R-1031', 'Deepak Deshmukh', 'Male', 35, '+91-9234567881', 'deepak.deshmukh@example.com', '2023-08-01', 77, 4.75, 'Card', 'Bike', 890.00, 'Indiranagar', 'Koramangala', 'Platinum'),
('C-532', 'R-1032', 'Anil Mehta', 'Male', 29, '+91-8147012381', 'anil.mehta@example.com', '2023-10-15', 21, 4.12, 'Cash', 'Auto Share', 25.00, 'HSR Layout', 'MG Road', 'Basic'),
('C-533', 'R-1033', 'Swati Reddy', 'Female', 24, '+91-9886012381', 'swati.reddy@example.com', '2023-01-25', 54, 4.58, 'UPI', 'Cab (Economy)', 420.00, 'Whitefield', 'Hebbal', 'Gold'),
('C-534', 'R-1034', 'Rashmi Sharma', 'Female', 30, '+91-7022012381', 'rashmi.sharma@example.com', '2023-12-10', 16, 4.05, 'Wallet', 'Parcel', 0.00, 'Koramangala', 'Indiranagar', 'Basic'),
('C-535', 'R-1035', 'Vijay Singh', 'Male', 41, '+91-9141012381', 'vijay.singh@example.com', '2023-03-12', 118, 4.88, 'UPI', 'Cab (Premium)', 2100.00, 'Bellandur', 'Whitefield', 'Platinum'),
('C-536', 'R-1036', 'Pooja Tiwari', 'Female', 23, '+91-8050987981', 'pooja.tiwari@example.com', '2023-05-20', 28, 4.32, 'Card', 'Bike', 75.00, 'Jayanagar', 'Marathahalli', 'Basic'),
('C-537', 'R-1037', 'Manoj Deshmukh', 'Male', 37, '+91-9742012381', 'manoj.deshmukh@example.com', '2023-06-25', 84, 4.72, 'UPI', 'Auto', 630.00, 'Hebbal', 'Electronic City', 'Gold'),
('C-538', 'R-1038', 'Anita Gupta', 'Female', 40, '+91-8884012381', 'anita.gupta@example.com', '2023-07-30', 43, 4.31, 'Cash', 'Auto Share', 12.00, 'Marathahalli', 'HSR Layout', 'Basic'),
('C-539', 'R-1039', 'Rajesh Bhat', 'Male', 35, '+91-9164012381', 'rajesh.bhat@example.com', '2023-11-01', 15, 4.18, 'Wallet', 'Parcel', 5.00, 'Electronic City', 'Indiranagar', 'Basic'),
('C-540', 'R-1040', 'Sunita Mehta', 'Female', 31, '+91-7259012381', 'sunita.mehta@example.com', '2023-02-15', 58, 4.52, 'UPI', 'Cab (Economy)', 280.00, 'MG Road', 'Bellandur', 'Gold'),
('C-541', 'R-1041', 'Kiran Sharma', 'Male', 27, '+91-8277012381', 'kiran.sharma@example.com', '2023-04-10', 92, 4.85, 'Card', 'Bike', 950.00, 'Indiranagar', 'Hebbal', 'Platinum'),
('C-542', 'R-1042', 'Megha Singh', 'Female', 28, '+91-9900012381', 'megha.singh@example.com', '2023-09-05', 33, 4.41, 'UPI', 'Auto', 185.00, 'HSR Layout', 'Whitefield', 'Gold'),
('C-543', 'R-1043', 'Deepak Tiwari', 'Male', 31, '+91-7019012381', 'deepak.tiwari@example.com', '2023-12-15', 10, 3.88, 'Cash', 'Cab (Premium)', 0.00, 'Whitefield', 'Jayanagar', 'Basic'),
('C-544', 'R-1044', 'Kavita Reddy', 'Female', 33, '+91-9448012381', 'kavita.reddy@example.com', '2023-06-20', 49, 4.48, 'Wallet', 'Bike', 60.00, 'Koramangala', 'MG Road', 'Gold'),
('C-545', 'R-1045', 'Sanjay Bhat', 'Male', 38, '+91-9945012381', 'sanjay.bhat@example.com', '2023-08-25', 74, 4.65, 'UPI', 'Auto Share', 490.00, 'Bellandur', 'Marathahalli', 'Platinum'),
('C-546', 'R-1046', 'Anjali Deshmukh', 'Female', 26, '+91-8095012381', 'anjali.deshmukh@example.com', '2023-03-30', 22, 4.25, 'Card', 'Parcel', 100.00, 'Jayanagar', 'Electronic City', 'Basic'),
('C-547', 'R-1047', 'Rahul Mehta', 'Male', 33, '+91-9123456771', 'rahul.mehta@example.com', '2023-05-01', 57, 4.58, 'UPI', 'Cab (Economy)', 250.00, 'MG Road', 'Indiranagar', 'Gold'),
('C-548', 'R-1048', 'Sneha Sharma', 'Female', 24, '+91-7760123971', 'sneha.sharma@example.com', '2023-11-25', 41, 4.45, 'Cash', 'Bike', 40.00, 'Hebbal', 'Koramangala', 'Basic'),
('C-549', 'R-1049', 'Amit Singh', 'Male', 43, '+91-9008123971', 'amit.singh@example.com', '2023-01-05', 128, 4.95, 'Wallet', 'Cab (Premium)', 1600.00, 'Marathahalli', 'HSR Layout', 'Platinum'),
('C-550', 'R-1050', 'Pooja Deshmukh', 'Female', 25, '+91-8050123971', 'pooja.deshmukh@example.com', '2023-07-20', 36, 4.35, 'UPI', 'Auto', 115.50, 'Electronic City', 'Whitefield', 'Gold'),
('C-551', 'R-1051', 'Deepak Reddy', 'Male', 34, '+91-9234567871', 'deepak.reddy@example.com', '2023-08-10', 68, 4.70, 'Card', 'Bike', 780.00, 'Indiranagar', 'Bellandur', 'Platinum'),
('C-552', 'R-1052', 'Anil Tiwari', 'Male', 28, '+91-8147012371', 'anil.tiwari@example.com', '2023-12-20', 19, 4.10, 'Cash', 'Auto Share', 15.00, 'HSR Layout', 'Hebbal', 'Basic'),
('C-553', 'R-1053', 'Swati Bhat', 'Female', 23, '+91-9886012371', 'swati.bhat@example.com', '2023-02-05', 49, 4.55, 'UPI', 'Cab (Economy)', 380.00, 'Whitefield', 'Marathahalli', 'Gold'),
('C-554', 'R-1054', 'Rashmi Mehta', 'Female', 29, '+91-7022012371', 'rashmi.mehta@example.com', '2023-11-10', 14, 4.02, 'Wallet', 'Parcel', 0.00, 'Koramangala', 'Electronic City', 'Basic'),
('C-555', 'R-1055', 'Vijay Sharma', 'Male', 40, '+91-9141012371', 'vijay.sharma@example.com', '2023-04-12', 109, 4.85, 'UPI', 'Cab (Premium)', 1900.00, 'Bellandur', 'MG Road', 'Platinum'),
('C-556', 'R-1056', 'Pooja Singh', 'Female', 22, '+91-8050987971', 'pooja.singh@example.com', '2023-05-25', 26, 4.28, 'Card', 'Bike', 50.00, 'Jayanagar', 'Whitefield', 'Basic'),
('C-557', 'R-1057', 'Manoj Tiwari', 'Male', 36, '+91-9742012371', 'manoj.tiwari@example.com', '2023-09-25', 78, 4.68, 'UPI', 'Auto', 590.00, 'Hebbal', 'Indiranagar', 'Gold'),
('C-558', 'R-1058', 'Anita Deshmukh', 'Female', 39, '+91-8884012371', 'anita.deshmukh@example.com', '2023-10-30', 39, 4.28, 'Cash', 'Auto Share', 10.00, 'Marathahalli', 'Bellandur', 'Basic'),
('C-559', 'R-1059', 'Rajesh Reddy', 'Male', 34, '+91-9164012371', 'rajesh.reddy@example.com', '2023-12-01', 13, 4.15, 'Wallet', 'Parcel', 0.00, 'Electronic City', 'Koramangala', 'Basic'),
('C-560', 'R-1060', 'Sunita Deshmukh', 'Female', 30, '+91-7259012371', 'sunita.deshmukh@example.com', '2023-03-15', 52, 4.48, 'UPI', 'Cab (Economy)', 250.00, 'MG Road', 'HSR Layout', 'Gold'),
('C-561', 'R-1061', 'Kiran Mehta', 'Male', 26, '+91-8277012371', 'kiran.mehta@example.com', '2023-06-10', 87, 4.82, 'Card', 'Bike', 850.00, 'Indiranagar', 'Whitefield', 'Platinum'),
('C-562', 'R-1062', 'Megha Sharma', 'Female', 27, '+91-9900012371', 'megha.sharma@example.com', '2023-01-05', 29, 4.38, 'UPI', 'Auto', 155.00, 'HSR Layout', 'Electronic City', 'Gold'),
('C-563', 'R-1063', 'Deepak Singh', 'Male', 30, '+91-7019012371', 'deepak.singh@example.com', '2023-11-15', 8, 3.82, 'Cash', 'Cab (Premium)', 0.00, 'Whitefield', 'Hebbal', 'Basic'),
('C-564', 'R-1064', 'Kavita Tiwari', 'Female', 32, '+91-9448012371', 'kavita.tiwari@example.com', '2023-08-20', 44, 4.42, 'Wallet', 'Bike', 45.00, 'Koramangala', 'Jayanagar', 'Gold'),
('C-565', 'R-1065', 'Sanjay Reddy', 'Male', 37, '+91-9945012371', 'sanjay.reddy@example.com', '2023-10-25', 68, 4.62, 'UPI', 'Auto Share', 450.00, 'Bellandur', 'HSR Layout', 'Platinum'),
('C-566', 'R-1066', 'Anjali Bhat', 'Female', 25, '+91-8095012371', 'anjali.bhat@example.com', '2023-05-30', 18, 4.20, 'Card', 'Parcel', 80.00, 'Jayanagar', 'MG Road', 'Basic'),
('C-567', 'R-1067', 'Rahul Deshmukh', 'Male', 32, '+91-9123456761', 'rahul.deshmukh@example.com', '2023-04-01', 52, 4.52, 'UPI', 'Cab (Economy)', 220.00, 'MG Road', 'Marathahalli', 'Gold'),
('C-568', 'R-1068', 'Sneha Mehta', 'Female', 23, '+91-7760123961', 'sneha.mehta@example.com', '2023-12-25', 38, 4.40, 'Cash', 'Bike', 30.00, 'Hebbal', 'Indiranagar', 'Basic'),
('C-569', 'R-1069', 'Amit Sharma', 'Male', 42, '+91-9008123961', 'amit.sharma@example.com', '2023-02-05', 120, 4.92, 'Wallet', 'Cab (Premium)', 1400.00, 'Marathahalli', 'Whitefield', 'Platinum'),
('C-570', 'R-1070', 'Pooja Singh', 'Female', 24, '+91-8050123961', 'pooja.singh@example.com', '2023-03-20', 32, 4.30, 'UPI', 'Auto', 95.50, 'Electronic City', 'HSR Layout', 'Gold'),
('C-571', 'R-1071', 'Deepak Tiwari', 'Male', 33, '+91-9234567861', 'deepak.tiwari@example.com', '2023-09-10', 63, 4.65, 'Card', 'Bike', 680.00, 'Indiranagar', 'Marathahalli', 'Platinum'),
('C-572', 'R-1072', 'Anil Reddy', 'Male', 27, '+91-8147012361', 'anil.reddy@example.com', '2023-11-20', 16, 4.05, 'Cash', 'Auto Share', 10.00, 'HSR Layout', 'Jayanagar', 'Basic'),
('C-573', 'R-1073', 'Swati Deshmukh', 'Female', 22, '+91-9886012361', 'swati.deshmukh@example.com', '2023-05-05', 44, 4.50, 'UPI', 'Cab (Economy)', 320.00, 'Whitefield', 'Bellandur', 'Gold'),
('C-574', 'R-1074', 'Rashmi Bhat', 'Female', 28, '+91-7022012361', 'rashmi.bhat@example.com', '2023-10-10', 12, 3.98, 'Wallet', 'Parcel', 0.00, 'Koramangala', 'MG Road', 'Basic'),
('C-575', 'R-1075', 'Vijay Mehta', 'Male', 39, '+91-9141012361', 'vijay.mehta@example.com', '2023-07-12', 102, 4.80, 'UPI', 'Cab (Premium)', 1700.00, 'Bellandur', 'Indiranagar', 'Platinum'),
('C-576', 'R-1076', 'Pooja Sharma', 'Female', 21, '+91-8050987961', 'pooja.sharma@example.com', '2023-09-25', 22, 4.22, 'Card', 'Bike', 35.00, 'Jayanagar', 'HSR Layout', 'Basic'),
('C-577', 'R-1077', 'Manoj Singh', 'Male', 35, '+91-9742012361', 'manoj.singh@example.com', '2023-02-25', 72, 4.62, 'UPI', 'Auto', 520.00, 'Hebbal', 'Marathahalli', 'Gold'),
('C-578', 'R-1078', 'Anita Tiwari', 'Female', 38, '+91-8884012361', 'anita.tiwari@example.com', '2023-01-30', 36, 4.22, 'Cash', 'Auto Share', 5.00, 'Marathahalli', 'Electronic City', 'Basic'),
('C-579', 'R-1079', 'Rajesh Deshmukh', 'Male', 33, '+91-9164012361', 'rajesh.deshmukh@example.com', '2023-03-01', 11, 4.10, 'Wallet', 'Parcel', 0.00, 'Electronic City', 'Hebbal', 'Basic'),
('C-580', 'R-1080', 'Sunita Reddy', 'Female', 29, '+91-7259012361', 'sunita.reddy@example.com', '2023-06-15', 47, 4.42, 'UPI', 'Cab (Economy)', 200.00, 'MG Road', 'Indiranagar', 'Gold'),
('C-581', 'R-1081', 'Kiran Bhat', 'Male', 25, '+91-8277012361', 'kiran.bhat@example.com', '2023-08-10', 82, 4.78, 'Card', 'Bike', 750.00, 'Indiranagar', 'Koramangala', 'Platinum'),
('C-582', 'R-1082', 'Megha Mehta', 'Female', 26, '+91-9900012361', 'megha.mehta@example.com', '2023-12-05', 26, 4.32, 'UPI', 'Auto', 125.00, 'HSR Layout', 'Bellandur', 'Gold'),
('C-583', 'R-1083', 'Deepak Sharma', 'Male', 29, '+91-7019012361', 'deepak.sharma@example.com', '2023-02-15', 6, 3.75, 'Cash', 'Cab (Premium)', 0.00, 'Whitefield', 'Marathahalli', 'Basic'),
('C-584', 'R-1084', 'Kavita Singh', 'Female', 31, '+91-9448012361', 'kavita.singh@example.com', '2023-11-20', 39, 4.35, 'Wallet', 'Bike', 30.00, 'Koramangala', 'HSR Layout', 'Gold'),
('C-585', 'R-1085', 'Sanjay Tiwari', 'Male', 36, '+91-9945012361', 'sanjay.tiwari@example.com', '2023-01-25', 63, 4.58, 'UPI', 'Auto Share', 390.00, 'Bellandur', 'Whitefield', 'Platinum'),
('C-586', 'R-1086', 'Anjali Reddy', 'Female', 24, '+91-8095012361', 'anjali.reddy@example.com', '2023-08-30', 15, 4.15, 'Card', 'Parcel', 50.00, 'Jayanagar', 'Indiranagar', 'Basic'),
('C-587', 'R-1087', 'Rahul Bhat', 'Male', 31, '+91-9123456751', 'rahul.bhat@example.com', '2023-07-01', 47, 4.45, 'UPI', 'Cab (Economy)', 190.00, 'MG Road', 'Hebbal', 'Gold'),
('C-588', 'R-1088', 'Sneha Deshmukh', 'Female', 22, '+91-7760123951', 'sneha.deshmukh@example.com', '2023-05-25', 33, 4.35, 'Cash', 'Bike', 20.00, 'Hebbal', 'Electronic City', 'Basic'),
('C-589', 'R-1089', 'Amit Mehta', 'Male', 41, '+91-9008123951', 'amit.mehta@example.com', '2023-09-05', 112, 4.88, 'Wallet', 'Cab (Premium)', 1200.00, 'Marathahalli', 'Jayanagar', 'Platinum'),
('C-590', 'R-1090', 'Pooja Sharma', 'Female', 23, '+91-8050123951', 'pooja.sharma@example.com', '2023-11-20', 28, 4.25, 'UPI', 'Auto', 75.50, 'Electronic City', 'Marathahalli', 'Gold'),
('C-591', 'R-1091', 'Deepak Singh', 'Male', 32, '+91-9234567851', 'deepak.singh@example.com', '2023-02-10', 58, 4.60, 'Card', 'Bike', 580.00, 'Indiranagar', 'Whitefield', 'Platinum'),
('C-592', 'R-1092', 'Anil Tiwari', 'Male', 26, '+91-8147012351', 'anil.tiwari@example.com', '2023-04-20', 14, 4.00, 'Cash', 'Auto Share', 5.00, 'HSR Layout', 'Koramangala', 'Basic'),
('C-593', 'R-1093', 'Swati Reddy', 'Female', 21, '+91-9886012351', 'swati.reddy@example.com', '2023-08-05', 39, 4.45, 'UPI', 'Cab (Economy)', 250.00, 'Whitefield', 'Electronic City', 'Gold'),
('C-594', 'R-1094', 'Rashmi Deshmukh', 'Female', 27, '+91-7022012351', 'rashmi.deshmukh@example.com', '2023-03-10', 10, 3.92, 'Wallet', 'Parcel', 0.00, 'Koramangala', 'Marathahalli', 'Basic'),
('C-595', 'R-1095', 'Vijay Bhat', 'Male', 38, '+91-9141012351', 'vijay.bhat@example.com', '2023-12-12', 95, 4.75, 'UPI', 'Cab (Premium)', 1500.00, 'Bellandur', 'MG Road', 'Platinum'),
('C-596', 'R-1096', 'Pooja Mehta', 'Female', 20, '+91-8050987951', 'pooja.mehta@example.com', '2023-02-25', 19, 4.18, 'Card', 'Bike', 25.00, 'Jayanagar', 'Indiranagar', 'Basic'),
('C-597', 'R-1097', 'Manoj Sharma', 'Male', 34, '+91-9742012351', 'manoj.sharma@example.com', '2023-05-25', 67, 4.58, 'UPI', 'Auto', 450.00, 'Hebbal', 'Bellandur', 'Gold'),
('C-598', 'R-1098', 'Anita Singh', 'Female', 37, '+91-8884012351', 'anita.singh@example.com', '2023-09-30', 32, 4.18, 'Cash', 'Auto Share', 0.00, 'Marathahalli', 'Koramangala', 'Basic'),
('C-599', 'R-1099', 'Rajesh Tiwari', 'Male', 32, '+91-9164012351', 'rajesh.tiwari@example.com', '2023-06-01', 10, 4.05, 'Wallet', 'Parcel', 0.00, 'Electronic City', 'Whitefield', 'Basic'),
('C-600', 'R-1100','Sunita Reddy', 'Female', 28, '+91-7259012351', 'sunita.reddy@example.com', '2023-12-15', 42, 4.38, 'UPI', 'Cab (Economy)', 150.00, 'MG Road', 'Electronic City', 'Gold')


SELECT * FROM Rapido_Captain AS RC
INNER JOIN
Rapido_User as RU
ON
RC.Rider_ID=RU.Rider_ID

/* Since you have both the Rider (Captain) perspective and the User (Customer) perspective,
you are in a perfect position to analyze the "Marketplace" dynamics—how supply meets demand.

Here are 5 intermediate-level business cases for Rapido, including the logic and the SQL/Analysis approach:

1. The "Ghost Demand" Analysis (Cancellation Patterns)
Business Problem: High cancellation rates frustrate users and reduce revenue.
We need to know why and where rides are failing.

Analysis: Compare the Status and Cancellation_Reasons across different Pickup_Areas.

Key Question: Are cancellations happening because Captains are "Late" (Supply issue) or because Users "Changed Mind" (UI/Pricing issue)?

Data Goal: Identify the top 3 "High-Churn" areas where Rapido should offer Captain incentives to reduce wait times.*/

SELECT * FROM Rapido_Captain
SELECT * FROM Rapido_User

SELECT  TOP 3 Pickup_Area,[status],Cancellation_Reasons,
count(*) AS Total_Rides,
SUM(CASE WHEN [Status]='Cancelled' THEN 1 ELSE 0 END)AS Status,
(CAST(SUM(CASE WHEN status ='cancelled' THEN 1  ELSE 0 END) AS Float)/count(*))* 100 as cancellation_Rate
FROM Rapido_Captain AS RC
INNER JOIN
Rapido_User as RU
ON
RC.Rider_id = RU.Rider_id
--WHERE [Status] = 'Cancelled'
GROUP BY Pickup_Area,Cancellation_Reasons,[Status]

SELECT TOP 3 Pickup_Area, 
       COUNT(*) AS Total_Rides,
       SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Rides,
       (CAST(SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS Cancellation_Rate
FROM Rapido_Captian
GROUP BY Pickup_Area
ORDER BY Cancellation_Rate DESC;
------------------------------------------------------------------------------------------------
/*2. Service Level Revenue Optimization

Business Problem: Rapido offers different service levels (Basic, Economic,Premium, Delivery). 
We need to know which one is the "Cash Cow."

Analysis: Calculate the Revenue per KM for each Service_Level and Vehicle_Type.

Formula: SUM(Fare_INR) / SUM(Distance_km) grouped by Service_Level.

Key Question: Does "Auto Share" generate more revenue per kilometer than "Bike" despite lower fares?

Data Goal: Determine which service level should be promoted during peak hours to maximize profit.*/

SELECT * FROM Rapido_Captain

SELECT DISTINCT(Vechile_Type),Service_level,--,Total_Rides_Booked, 
SUM(Fare_INR) AS Renv,
CAST(SUM(fare_INR) / SUM(Distance_km)AS DECIMAL(10,1)) AS PER_KM_CHARGE,
count(Total_Rides_Booked  ) AS Grand_Total_Rides
--(SELECT (Total_Rides_Booked))
 --DENSE_RANK()OVER(ORDER BY Total_Rides_Booked DESC)
FROM Rapido_Captain AS RC
INNER JOIN
Rapido_User as RU
ON
RC.Rider_ID=RU.Rider_ID
WHERE Vechile_Type IN ('Auto share','Bike','parcel','cab','Auto') 
AND Service_level IN('Basic','Delivery','Economic','premium')
AND Rider_Time BETWEEN '8:00:00' AND '11:00:00'
GROUP BY  Vechile_Type,Service_level
ORDER BY Grand_Total_Rides DESC;
--ORDER BY Total_Rides_Booked DESC
--,Total_Rides_Booked 

/*3. User Segmentation & Loyalty (RFM Analysis)
Business Problem: We want to know who our "Power Users" are so we can give them better subscription offers.

Analysis: Link Rapido_Userss and Rapido_Captianssee on Customer_ID.

Key Question: Do users with a Gold or Platinum subscription actually book more rides and have higher User_Rating_by_Captain?

Data Goal: Identify "Basic" users who have high Total_Rides_Booked but 
haven't upgraded to a subscription yet. These are targets for a marketing campaign.*/

SELECT TOP 5  Total_Rides_Booked, [User_Name], Subscription_Type FROM Rapido_Captain AS RC
INNER JOIN 
Rapido_User AS RU
ON
RC.Rider_id=Ru.Rider_id
WHERE Subscription_Type   = ('Basic')
GROUP BY [User_Name],Total_Rides_Booked,Subscription_Type
HAVING Total_Rides_Booked >=26
ORDER BY Total_Rides_Booked DESC


/*4. Peak Hour Supply-Demand Gap
Business Problem: During certain times, the Fare_INR might be high, but if the Status is mostly
"Cancelled," we are losing money.

Analysis: Group data by Rider_Time (Hour of the day) and Status.

Key Question: What are the "Golden Hours" (High completion + High Fare) vs. "Stress Hours" (High demand + High Cancellation)?

Data Goal: Recommend a "Surge Pricing" window or a "Captain Shift" shift change to ensure more bikes are
on the road during Stress Hours.*/



SELECT CAST(Rider_Time AS TIME(0)) AS Time,Fare_INR,[Status] FROM Rapido_Captain AS RS
INNER JOIN
Rapido_User AS RU
ON
RS.Rider_ID=RU.Rider_ID
WHERE [Status] IN ('Cancelled') AND Rider_Time BETWEEN '8:00:00' AND '10:30:00'
-------------------------------------------------------------------------------------------------------
---GOLDEN HOURS

WITH Hourlyfair as(
SELECT DATEPART(HOUR,Rider_Time)AS HOURS,[Status],Vechile_Type, AVG(Fare_INR)AS fare_Inr,
DENSE_RANK() OVER (ORDER BY MAX(Fare_INR)DESC) AS Profit_Rank
FROM Rapido_Captain AS RC
INNER JOIN
Rapido_User AS RU
ON
RC.Rider_ID=RU.Rider_ID
WHERE [Status]='Completed'
GROUP BY  DATEPART(HOUR,Rider_Time),Fare_INR,[Status],Vechile_Type
--ORDER BY Fare_INR DESC
)
SELECT * FROM Hourlyfair
WHERE Profit_Rank <=5

-----------------------------------------------------------------------------------------------------
--STRESS HOURS
--"Stress Hours" (High demand + High Cancellation)

SELECT TOP 4 DATEPART(HOUR,Rider_Time)AS Time_In_Hours,COUNT (*) AS Cancelleation_Time,--,Pickup_Area,
CAST(COUNT(*) * 100.0/ (SELECT COUNT(*)FROM Rapido_Captain)AS decimal(10,2)) AS Percentage,
[Status]
--DENSE_RANK() (OVER (PARTITION BY Rider_Time) ) as HOURS
FROM Rapido_Captain AS RC
INNER JOIN
Rapido_User AS RU
ON
Rc.Rider_ID=Ru.Rider_ID
WHERE [Status]='Cancelled'
GROUP BY DATEPART(HOUR,Rider_Time),[Status]--,Pickup_Area
HAVING COUNT(*)<=5
ORDER BY Cancelleation_Time DESC

-----------------------------------------------------------------------------------------------------
--PERFORMANCE GAP

--Find how much money loss When ride cancelled
SELECT TOP 5 SUM(Fare_INR)AS Potential_loss,
DATEPART(HOUR,Rider_Time)AS Stress_Hours,
[Status] FROM Rapido_Captain as RC
INNER JOIN
Rapido_User as Ru
ON
RC.Rider_ID=Ru.Rider_ID
WHERE [Status]='Cancelled'
GROUP BY DATEPART(HOUR,Rider_Time),[Status]
ORDER BY Potential_loss DESC

-----------------------------------------------------------------------------------------------------------------
/* 5. Area Profitability & Expansion

Business Problem: Rapido wants to know if they should expand their fleet in Electronic City or Indiranagar.

Analysis: Compare Pickup_Area vs Drop_Area.

Key Question: Which areas act as "Sinks" (many drops, few pickups) and which are "Sources" (many pickups, few drops)?

Data Goal: If a Captain drops a passenger in Hebbal but has to drive back empty to MG Road to get
a new ride, that's "Dead Mileage." Identify areas with the best "Back-to-Back" ride potential.*/

----------------------------------------------------------------------------------------------------------------------------
--MAXIMUM PICKUP
WITH PICKUP_Count AS(
SELECT Pickup_Area, COUNT(*) AS Many_Pickup FROM Rapido_Captain
GROUP BY Pickup_Area
--ORDER BY Total_Pickup DESC 
),
-------------------------------------------------------------------------------------------------------------------------------
--MINIMUM PICKUP
 Drop_count AS(
SELECT  Drop_Area,COUNT(*)AS Few_Drop FROM Rapido_Captain 
GROUP BY Drop_Area
--ORDER BY Total_Rides_Booked ASC
)
SELECT TOP 5
p.Pickup_Area AS AREA,
p.Many_Pickup,
D.Few_Drop
FROM PICKUP_Count P
JOIN Drop_count D
ON
P.Pickup_Area=D.Drop_Area
ORDER BY Few_Drop ASC,Many_Pickup DESC
-----------------------------------------------------------------------------------------------------------------------------------
-- Key Question: Which areas act as "Sinks" (many drops, few pickups) and which are "Sources" (many pickups, few drops)?

SELECT DISTINCT TOP 5( Pickup_Area),COUNT (*)AS Total_Pickup_Area--,Drop_Area 
FROM Rapido_Captain
GROUP BY Pickup_Area--,Drop_Area
ORDER BY Total_Pickup_Area DESC
--HAVING COUNT(Pickup_Area)<=21

SELECT DISTINCT TOP 5( Drop_Area),COUNT (*)AS Total_Drop_Area--,Drop_Area 
FROM Rapido_Captain
GROUP BY Drop_Area--,Drop_Area
ORDER BY Total_Drop_Area ASC

---------------------------------------------------------------------------------------------------------------------------------------
--Data Goal: If a Captain drops a passenger in Hebbal but has to drive back empty to MG Road to get
--a new ride, that's "Dead Mileage." Identify areas with the best "Back-to-Back" ride potential.

WITH pickup_Status AS(
SELECT Pickup_Area,COUNT(*) as Total_Pickup FROM Rapido_Captain
GROUP BY Pickup_Area
),

DropArea_status AS(
SELECT Drop_Area,count(*) AS Total_Drop FROM Rapido_Captain
GROUP BY Drop_Area
)
SELECT
P.Pickup_Area AS Area,
P.Total_Pickup,
D.Total_Drop,
ROUND(CAST(P.Total_Pickup AS FLOAT) / NULLIF(D.Total_Drop, 0), 2) AS Efficiency_Ratio,
ABS(P.Total_Pickup - D.Total_Drop) AS Dead_milage_Volume
FROM Pickup_status  p
JOIN
DropArea_status  D
ON
p.pickup_Area=D.Drop_Area
ORDER BY Efficiency_Ratio DESC