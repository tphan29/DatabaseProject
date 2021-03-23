INSERT INTO PATIENT (PID, DOB, Fname, Minit, Lname) VALUES ('001', '2020-01-01', 'Adult', 'A', 'Patient');

INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) VALUES ('1', '00000000001', 'Clerk', '1', 'Employee');
INSERT INTO IN_CLERK (CID, EID) VALUES ('1', '1');

INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) VALUES ('1', '2020-12-01 12:00:00', '100', '0', '001', '1');

INSERT INTO TREATMENT (Pcs_code, Name, Cost) VALUES ('treat1', 'Good Diet', '1000');
INSERT INTO TREATMENT (Pcs_code, Name, Cost) VALUES ('treat2', 'Exercise', '1000');

INSERT INTO PRESCRIBED (Vist_ID, Pcs_code) VALUES ('1', 'treat1');
INSERT INTO PRESCRIBED (Vist_ID, Pcs_code) VALUES ('1', 'treat2');


SELECT Vist_ID as Visit_Id, COUNT(PRESCRIBED.Pcs_code) as treatmentCount
FROM VISIT
INNER JOIN PRESCRIBED ON VISIT.V_id = PRESCRIBED.Vist_ID 
INNER JOIN TREATMENT ON TREATMENT.Pcs_code = PRESCRIBED.Pcs_code 
GROUP BY PRESCRIBED.Vist_ID
