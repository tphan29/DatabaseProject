INSERT INTO `PATIENT` (`PID`, `DOB`, `Fname`, `Minit`, `Lname`) 
VALUES ('000', '2020-01-01', 'Minor', 'A', 'Patient');

INSERT INTO `EMPLOYEE` (`EID`, `SSN`, `Fname`, `Minit`, `Lname`) VALUES ('1', '00000000000', 'Clerk', '1', 'Employee');

INSERT INTO `IN_CLERK` (`CID`, `EID`) VALUES ('1', '1');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('1', '2020-12-01 12:00:00', '100', '0', '000', '1');

SELECT * FROM 
(
	SELECT PATIENT.PID, V_id, FLOOR(DATEDIFF(VISIT.Visit_time, PATIENT.DOB)/365) as Age
	FROM PATIENT, VISIT
	WHERE PATIENT.PID = VISIT.Patient_id
) as PATIENT_VISIT_AGE
WHERE NOT EXISTS (
	SELECT *
    FROM GUARDIAN
    WHERE GUARDIAN.Visit_Id = PATIENT_VISIT_AGE.V_id
)

