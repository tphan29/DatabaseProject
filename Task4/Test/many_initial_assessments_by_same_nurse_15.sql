INSERT INTO EMPLOYEE(EID,SSN,Fname,Minit,Lname)
VALUES (3763, 98666999, 'Cole', 'J', 'Man');

INSERT INTO EMPLOYEE(EID,SSN,Fname,Minit,Lname)
VALUES (3764, 98666977, 'Ron', 'S', 'Swanson');

INSERT INTO NURSE(NID,EID) 
VALUES (502, 3763);

INSERT INTO IN_CLERK(CID,EID) 
VALUES (503, 3764);

INSERT INTO `PATIENT` (`PID`, `DOB`, `Fname`, `Minit`, `Lname`) 
VALUES ('031', '1987-01-01', 'Mick', 'A', 'Low');

INSERT INTO `PATIENT` (`PID`, `DOB`, `Fname`, `Minit`, `Lname`) 
VALUES ('032', '1988-01-01', 'Tiny', 'P', 'Sat');

INSERT INTO `PATIENT` (`PID`, `DOB`, `Fname`, `Minit`, `Lname`) 
VALUES ('033', '1989-01-01', 'Tom', 'J', 'Jerry');

INSERT INTO `PATIENT` (`PID`, `DOB`, `Fname`, `Minit`, `Lname`) 
VALUES ('034', '1990-01-01', 'Aaron', 'A', 'Lay');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('45', '2020-08-01 12:01:01', '150', '0', '031', '503');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('46', '2020-09-01 12:01:01', '200', '0', '032', '503');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('47', '2020-10-01 12:01:01', '300', '0', '033', '503');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('48', '2020-11-01 12:01:01', '400', '0', '034', '503');

INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (30100, 65, 190, 69.00, 98, 98.02, 'he is fine', 45, 502);

INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (30200, 66, 191, 70.00, 98, 98.02, 'he is sick', 46, 502);

INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (30300, 67, 192, 71.00, 98, 98.02, 'he is red', 47, 502);

INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (30500, 68, 193, 72.00, 93, 99.02, 'he is green', 48, 502);

SELECT A_id, Nurse_Id, Patient_id
FROM INITIAL_ASSESSMENT, VISIT
WHERE INITIAL_ASSESSMENT.Visit_Id = VISIT.V_id