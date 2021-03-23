INSERT INTO PATIENT (PID, DOB, Fname, Minit, Lname) VALUES ('001', '2020-01-01', 'Adult', 'A', 'Patient');

INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) VALUES ('1', '00000000001', 'Clerk', '1', 'Employee');
INSERT INTO IN_CLERK (CID, EID) VALUES ('1', '1');

INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) VALUES ('1', '2020-12-01 12:00:00', '100', '0', '001', '1');

INSERT INTO GUARDIAN (G_id, Visit_Id, Phone_no, Dob, Relationship, Fname, Minit, Lname) VALUES ('1', '1', '1111111111', '2000-01-01', 'Father', 'Greg', 'A', 'Johnson');
INSERT INTO GUARDIAN (G_id, Visit_Id, Phone_no, Dob, Relationship, Fname, Minit, Lname) VALUES ('2', '1', '2222222222', '1999-01-01', 'Mother', 'Gene', 'B', 'Johnson');

SELECT V_id as Visit_Id, COUNT(GUARDIAN.G_id) as guardianCount
FROM VISIT
LEFT JOIN GUARDIAN ON VISIT.V_id = GUARDIAN.Visit_Id 
GROUP BY VISIT.V_id

