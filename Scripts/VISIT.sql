# Creating VISIT table
# Author: Team 25

CREATE TABLE VISIT (
	V_id INT NOT NULL,
    Visit_time DATETIME NULL,
    Initial_cost DECIMAL(15,2) NULL,
    Additional_cost DECIMAL(15, 2) NULL,
    Patient_id VARCHAR(15) NOT NULL,
    Pol_no INT NULL,
    Clerk_Id INT NOT NULL,
    PRIMARY KEY (V_id),
    FOREIGN KEY (Patient_id) REFERENCES PATIENT(PID),
    FOREIGN KEY (Pol_no) REFERENCES INSURANCE_POLICY(Policy_no),
	FOREIGN KEY (Clerk_Id) REFERENCES IN_CLERK (CID) 
)