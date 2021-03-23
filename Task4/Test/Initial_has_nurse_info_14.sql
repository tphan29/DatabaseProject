INSERT INTO EMPLOYEE(EID,SSN,Fname,Minit,Lname)
VALUES (1479, 56575859, 'Marty', 'J', 'Simon');

INSERT INTO EMPLOYEE(EID,SSN,Fname,Minit,Lname)
VALUES (5679, 98575449, 'Emma', 'F', 'Anderson');

INSERT INTO EMPLOYEE(EID,SSN,Fname,Minit,Lname)
VALUES (4267, 98695454, 'Jacob', 'I', 'Lost');

INSERT INTO NURSE(NID,EID) 
VALUES (5671, 1479);

INSERT INTO NURSE(NID,EID) 
VALUES (1885, 5679);

INSERT INTO IN_CLERK(CID,EID) 
VALUES (1537, 4267);

INSERT INTO `PATIENT` (`PID`, `DOB`, `Fname`, `Minit`, `Lname`) 
VALUES ('067', '1967-07-03', 'Jack', 'A', 'Patrick');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('43', '2020-11-01 01:01:01', '100', '0', '067', '1537');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('44', '2020-10-01 02:01:01', '100', '0', '067', '1537');

INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (1287, 76, 200.25, 72.00, 98, 98.02, 'is blue', 43, 5671);

INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (1288, 77, 201.25, 73.00, 93, 99.02, 'Weak Knees', 44, 1885);

/* Shows that Initial assessment needs a nurse ID inorder to be created.
	Meaning we can get nurse info from nurse ID attached to inital assessment
INSERT INTO INITIAL_ASSESSMENT(A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_id, Nurse_Id)
VALUES (1288, 77, 201.25, 73.00, 93, 99.02, 'Weak Knees', 44, NULL);
*/

/*Shows that inital assessment has a nurse Id attached to it*/
SELECT A_id, Nurse_Id
FROM INITIAL_ASSESSMENT;

/*Getting information about the nurse*/
SELECT A_id, EID, Nurse_Id, NID, SSN, Fname, Minit, Lname 
FROM NURSE NATURAL JOIN EMPLOYEE, INITIAL_ASSESSMENT
WHERE INITIAL_ASSESSMENT.Nurse_Id = NID;

