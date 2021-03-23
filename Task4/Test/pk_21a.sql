INSERT INTO PATIENT (PID, DOB, Fname, Minit, Lname) VALUES ('001', '2020-01-01', 'Adult', 'A', 'Patient');
INSERT INTO PATIENT (PID, DOB, Fname, Minit, Lname) VALUES ('001', '2000-01-01', 'Adult', 'B', 'Patient');

SELECT PID, COUNT(*)
FROM PATIENT
GROUP BY PATIENT.PID

