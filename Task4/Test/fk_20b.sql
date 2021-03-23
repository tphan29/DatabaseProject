INSERT INTO PATIENT (PID, DOB, Fname, Minit, Lname) VALUES ('001', '2020-01-01', 'Adult', 'A', 'Patient');

INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) VALUES ('1', '00000000001', 'Clerk', 'A', 'Employee');
INSERT INTO IN_CLERK (CID, EID) VALUES ('1', '1');
INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) VALUES ('2', '00000000002', 'Nurse', 'A', 'Employee');
INSERT INTO NURSE (NID, EID) VALUES ('2', '2');

INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) VALUES ('1', '2020-12-01 12:00:00', '100', '0', '001', '1');

INSERT INTO INITIAL_ASSESSMENT (A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_Id, Nurse_Id) VALUES ('1', '120', '140', '68', '50', '97', 'join pain', '1', '2');
INSERT INTO INITIAL_ASSESSMENT (A_id, Blood_pressure, Weight, Height, Pulse, Temperature, Med_desc, Visit_Id, Nurse_Id) VALUES ('2', '130', '150', '70', '60', '98', 'muscle aches', '1', '2');

SELECT V_id as Visit_Id, COUNT(INITIAL_ASSESSMENT.A_id) as assessmentCount
FROM VISIT
LEFT JOIN INITIAL_ASSESSMENT ON VISIT.V_id = INITIAL_ASSESSMENT.Visit_Id 
GROUP BY VISIT.V_id

