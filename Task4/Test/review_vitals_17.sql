INSERT INTO PATIENT (PID, DOB, Fname, Minit, Lname) VALUES ('001', '2020-01-01', 'Adult', 'A', 'Patient');

INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) VALUES ('1', '00000000001', 'Clerk', '1', 'Employee');
INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) VALUES ('2', '00000000002', 'Nurse', '1', 'Employee');

INSERT INTO IN_CLERK (CID, EID) VALUES ('1', '1');
INSERT INTO NURSE (NID, EID) VALUES ('2', '2');

INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) VALUES ('1', '2020-12-01 12:00:00', '100', '0', '001', '1');
INSERT INTO INITIAL_ASSESSMENT (A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_Id, Nurse_Id) VALUES ('1', '120', '150', '70', '60', 100.8, 'fever', '1', '2');

SELECT Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc
FROM VISIT, INITIAL_ASSESSMENT
WHERE VISIT.V_id = INITIAL_ASSESSMENT.Visit_Id
	AND V_id = '1'
