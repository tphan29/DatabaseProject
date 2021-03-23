INSERT INTO PATIENT (PID, DOB, Fname, Minit, Lname) 
VALUES (124, 2000-01-01, "Jane", "B", "Doe");

INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) 
VALUES (11, 00000000000, "James", "C", "Employee");

INSERT INTO IN_CLERK (CID, EID) 
VALUES (11, 11);

INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) 
VALUES (102, '2020-12-01 00:00:00', 1000, 10, 124, 11);

SELECT PATIENT.Fname, VISIT.V_id, DIAGNOSIS.Cm_code FROM PATIENT, VISIT, DIAGNOSIS
WHERE DIAGNOSIS.Visit_Id = VISIT.V_id
AND VISIT.Patient_id = PATIENT.PID;
