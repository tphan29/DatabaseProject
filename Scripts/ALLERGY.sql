# Creating ALLERGY table
# Author: David Nguyen

CREATE TABLE ALLERGY (
	Assess_ID INT,
    Allergy VARCHAR(45),
    PRIMARY KEY (Assess_id, Allergy),
    FOREIGN KEY (Assess_id) REFERENCES INITIAL_ASSESSMENT(A_id) ON UPDATE CASCADE ON DELETE CASCADE
);
