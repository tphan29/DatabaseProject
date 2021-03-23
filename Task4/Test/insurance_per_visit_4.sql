INSERT INTO PATIENT (PID, DOB, Fname, Minit, Lname) VALUES ('001', '2000-01-01', 'Adult', 'A', 'Patient');

INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) VALUES (1, 00000000001, 'Clerk', 'A', 'Employee');
INSERT INTO IN_CLERK (CID, EID) VALUES ('1', '1');

INSERT INTO INSURANCE_POLICY (Policy_no) VALUES (7);
INSERT INTO INSURANCE_POLICY (Policy_no) VALUES (9);

INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Pol_no, Clerk_Id) 
VALUES ('1', '2020-12-01 12:00:00', '100', '0', '001', '7', '1');
INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Pol_no, Clerk_Id) 
VALUES ('2', '2020-12-03 12:00:00', '100', '0', '001', '7', '1');
INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) 
VALUES ('3', '2020-12-12 12:00:00', '100', '0', '001', '1');
INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Pol_No, Clerk_Id) 
VALUES ('4', '2020-12-14 12:00:00', '100', '0', '001', 9,  '1');
INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Pol_No, Clerk_Id) 
VALUES ('5', '2020-12-15 12:00:00', '100', '0', '001', 7,  '1');

SELECT V_id, Patient_id, Pol_no
FROM VISIT LEFT JOIN INSURANCE_POLICY ON Pol_no = Policy_no