INSERT INTO PATIENT (PID, DOB, Fname, Minit, Lname) VALUES ('001', '2000-01-01', 'Adult', 'A', 'Patient');
INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) VALUES (1, 00000000001, 'Clerk', 'A', 'Employee');
INSERT INTO IN_CLERK (CID, EID) VALUES ('1', '1');
INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) VALUES (2, 00000000002, 'Doctor', 'A', 'Employee');
INSERT INTO SERVICE_PROVIDER (SID, EID) VALUES ('2', '2');
INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) VALUES (3, 00000000003, 'Physician', 'A', 'Employee');
INSERT INTO SERVICE_PROVIDER (SID, EID) VALUES ('3', '3');

INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) 
VALUES ('1', '2020-12-01 12:00:00', '100', '0', '001', '1');
INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) 
VALUES ('2', '2020-12-12 12:00:00', '100', '0', '001', '1');
INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) 
VALUES ('3', '2020-12-14 12:00:00', '100', '0', '001', '1');
INSERT INTO MEDICAL_CONDITION (Cm_Code) VALUES ('ST4'); 

INSERT INTO DIAGNOSIS (Cm_code, Visit_Id, Provider_Id)
VALUES ('ST4', 1, 2);

INSERT INTO DIAGNOSIS (Cm_code, Visit_Id, Provider_Id)
VALUES ('ST4', 2, 3);

INSERT INTO DIAGNOSIS (Cm_code, Visit_Id, Provider_Id)
VALUES ('ST4', 3, 3);


SELECT V_id, Patient_id, Provider_Id
FROM VISIT INNER JOIN DIAGNOSIS ON V_id = Visit_Id