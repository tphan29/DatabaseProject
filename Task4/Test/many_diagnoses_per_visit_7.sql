INSERT INTO PATIENT (PID, DOB, Fname, Minit, Lname) 
VALUES (123, 2000-01-01, "John", "A", "Doe");

INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) 
VALUES (10, 00000000000, "Jim", 1, "Employee");

INSERT INTO IN_CLERK (CID, EID) 
VALUES (10, 10);

INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) 
VALUES (100, '2020-12-01 12:00:00', 100, 0, 123, 10);

INSERT INTO SERVICE_PROVIDER (SID, EID)
VALUES (234, 10);

INSERT INTO MEDICAL_CONDITION (Cm_code, Name)
VALUES ("sic", "Disease");

INSERT INTO DIAGNOSIS (`Cm_code`, `Visit_Id`, `Provider_Id`)
VALUES ("sic", 100, 234);

INSERT INTO MEDICAL_CONDITION (Cm_code, Name)
VALUES ("cov", "COVID");

INSERT INTO DIAGNOSIS (`Cm_code`, `Visit_Id`, `Provider_Id`)
VALUES ("cov", 100, 234);

/* Add a third diagnosis on a different day for the same patient */
INSERT INTO `VISIT` (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) 
VALUES (101, '2020-12-02 12:00:00', 100, 0, 123, 10);

INSERT INTO DIAGNOSIS (Cm_code, Visit_Id, Provider_Id)
VALUES ("sic", 101, 234);
/*  */

SELECT * FROM DIAGNOSIS
WHERE Visit_Id = 100;
