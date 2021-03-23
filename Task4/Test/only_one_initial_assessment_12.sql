INSERT INTO EMPLOYEE(EID,SSN,Fname,Minit,Lname)
VALUES (5678, 98575989, 'Andrew', 'J', 'Louie');

INSERT INTO EMPLOYEE(EID,SSN,Fname,Minit,Lname)
VALUES (5679, 98575449, 'Amy', 'J', 'Louie');

INSERT INTO EMPLOYEE(EID,SSN,Fname,Minit,Lname)
VALUES (5680, 98-57-5450, 'Larson', 'M', 'Ron');

INSERT INTO NURSE(NID,EID) 
VALUES (47899, 5678);

INSERT INTO NURSE(NID,EID) 
VALUES (47867, 5680);

INSERT INTO IN_CLERK(CID,EID) 
VALUES (47869, 5679);

INSERT INTO `PATIENT` (`PID`, `DOB`, `Fname`, `Minit`, `Lname`) 
VALUES ('007', '2020-01-01', 'Minny', 'A', 'Pat');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('9', '2020-11-01 12:01:01', '100', '0', '007', '47869');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('10', '2020-11-01 12:01:01', '100', '0', '007', '47869');

INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (30000, 76, 200.25, 72.00, 98, 98.02, 'he is fine', 9, 47899);

INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (30022, 77, 201.25, 73.00, 93, 99.02, 'he is turning', 10, 47899);

/* 
I added this to check if I could add another Initial assessment with different nurse id
and after adding the above one. It give me an error, which doesn't allow me to add it
You can test this out by first creating the above data and then adding this assessment

INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (30052, 77, 201.25, 73.00, 93, 99.02, 'he is sick', 9, 47867);
*/

/*Shows that only one A_id is paired with Visit_id*/
SELECT A_id, Visit_id, Nurse_id
FROM INITIAL_ASSESSMENT