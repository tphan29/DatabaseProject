INSERT INTO EMPLOYEE(EID,SSN,Fname,Minit,Lname)
VALUES (5457, 56552341, 'Jack', 'B', 'Black');

INSERT INTO EMPLOYEE(EID,SSN,Fname,Minit,Lname)
VALUES (4521, 86664439, 'Hannah', 'F', 'Anderson');

INSERT INTO EMPLOYEE(EID,SSN,Fname,Minit,Lname)
VALUES (4267, 98555333, 'Jacobio', 'R', 'Lein');

INSERT INTO NURSE(NID,EID) 
VALUES (3237, 5457);

INSERT INTO NURSE(NID,EID) 
VALUES (3235, 4521);

INSERT INTO IN_CLERK(CID,EID) 
VALUES (7116, 4267);

INSERT INTO `PATIENT` (`PID`, `DOB`, `Fname`, `Minit`, `Lname`) 
VALUES ('071', '1977-07-03', 'Tack', 'A', 'Patrick');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('59', '2020-03-01 01:01:01', '100', '0', '071', '7116');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('60', '2020-03-01 01:01:01', '100', '0', '071', '7116');

INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (1456, 57, 210.25, 74.00, 99, 100.02, 'is cold', 59, 3237);

/* Checks to see if a different nurse can change/ complete a initial_assessment by chaninging th visit id and nurse id
INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (1456, 57, 210.25, 74.00, 99, 100.02, 'is freezing', 60, 3235);
*/

SELECT * FROM INITIAL_ASSESSMENT;