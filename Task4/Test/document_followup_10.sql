INSERT INTO PATIENT (PID, DOB, Fname, Minit, Lname) 
VALUES (126, 2000-01-01, "George", "W", "Bush");

INSERT INTO EMPLOYEE (EID, SSN, Fname, Minit, Lname) 
VALUES (17, 1234567890, "Carry", "A", "Hatchet");

INSERT INTO IN_CLERK (CID, EID) 
VALUES (1017, 17);

INSERT INTO VISIT (V_id, Visit_time, Initial_cost, Additional_cost, Patient_id, Clerk_Id) 
VALUES (106, '2020-12-0 00:00:00', 10, 100, 126, 1017);

INSERT INTO TREATMENT (Pcs_code, Name, Cost)
VALUES ("nothing", "Do Nothing", 24);

INSERT INTO PRESCRIBED (Vist_ID, Pcs_code)
VALUES (106, "nothing");

SELECT Fname, V_id, TREATMENT.Pcs_code
FROM PATIENT, VISIT, TREATMENT, PRESCRIBED
WHERE PATIENT.PID = VISIT.Patient_id
AND VISIT.V_id = PRESCRIBED.Vist_ID
AND PRESCRIBED.Pcs_code = TREATMENT.Pcs_code;

INSERT INTO TREATMENT (Pcs_code, Name, Cost)
VALUES ("dostuff", "Do Something", 53);

INSERT INTO PRESCRIBED (Vist_ID, Pcs_code)
VALUES (106, "dostuff");

SELECT Fname, V_id, TREATMENT.Pcs_code
FROM PATIENT, VISIT, TREATMENT, PRESCRIBED
WHERE PATIENT.PID = VISIT.Patient_id
AND VISIT.V_id = PRESCRIBED.Vist_ID
AND PRESCRIBED.Pcs_code = TREATMENT.Pcs_code;