INSERT INTO `PATIENT` (`PID`, `DOB`, `Fname`, `Minit`, `Lname`) 
VALUES ('000', '2000-01-01', 'Adult', 'A', 'Patient');
INSERT INTO `EMPLOYEE` (`EID`, `SSN`, `Fname`, `Minit`, `Lname`) VALUES ('1', '00000000000', 'Clerk', '1', 'Employee');
INSERT INTO `IN_CLERK` (`CID`, `EID`) VALUES ('1', '1');

-- Patient makes a visit with a guardian while they're a minor
INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('1', '2017-12-01 12:00:00', '100', '0', '000', '1');
INSERT INTO GUARDIAN (G_id, Visit_Id) VALUES (39, 1);

-- Is there still a guardian associated with the patient if they make a visit while they're over 18?
INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('2', '2018-01-01 12:00:00', '100', '0', '000', '1');

-- Can a adult have a guardian associated with their visit?
INSERT INTO `PATIENT` (`PID`, `DOB`, `Fname`, `Minit`, `Lname`) 
VALUES ('001', '2001-01-01', 'Adult2', 'A', 'Patient');
INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('3', '2020-12-01 12:00:00', '100', '0', '001', '1');
INSERT INTO GUARDIAN (G_id, Visit_Id) VALUES (40, 3);

SELECT PID, V_id, Age, G_id FROM 
(
	SELECT PATIENT.PID, V_id, FLOOR(DATEDIFF(VISIT.Visit_time, PATIENT.DOB)/365) as Age
	FROM PATIENT, VISIT
	WHERE PATIENT.PID = VISIT.Patient_id
) as PATIENT_VISIT_AGE
LEFT OUTER JOIN GUARDIAN ON GUARDIAN.Visit_Id = PATIENT_VISIT_AGE.V_id;
