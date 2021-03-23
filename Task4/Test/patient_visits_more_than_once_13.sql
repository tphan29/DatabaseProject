INSERT INTO `PATIENT` (`PID`, `DOB`, `Fname`, `Minit`, `Lname`) 
VALUES ('010', '1999-04-04', 'Golly', 'F', 'Leman');

INSERT INTO `EMPLOYEE` (`EID`, `SSN`, `Fname`, `Minit`, `Lname`) 
VALUES ('12', '098056789', 'NightC', 'R', 'Geep');

INSERT INTO `IN_CLERK` (`CID`, `EID`) 
VALUES ('6', '12');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('4', '2020-12-01 11:00:00', '110', '0', '010', '6');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('5', '2020-12-01 11:00:00', '110', '0', '010', '6');

INSERT INTO `VISIT` (`V_id`, `Visit_time`, `Initial_cost`, `Additional_cost`, `Patient_id`, `Clerk_Id`) 
VALUES ('6', '2020-12-02 11:00:00', '110', '0', '010', '6');

/* Checks if the same patient ID had a visit same day, by checking how many visits
	are assocated with the patient ID*/ 
SELECT V_id, Patient_id, Visit_time
FROM VISIT
WHERE Patient_id = '010'