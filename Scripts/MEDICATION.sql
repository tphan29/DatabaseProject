# Creating MEDICATION table
# Author: David Nguyen

CREATE TABLE MEDICATION (
	Assess_ID INT,
    Medication VARCHAR(45),
    PRIMARY KEY (Assess_id, Medication),
    FOREIGN KEY (Assess_id) REFERENCES INITIAL_ASSESSMENT(A_id) ON UPDATE CASCADE ON DELETE CASCADE
);
