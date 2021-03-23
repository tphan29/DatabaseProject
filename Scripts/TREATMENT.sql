# Creating TREATMENT table
# Author: Team 25

CREATE TABLE TREATMENT (
	Pcs_code VARCHAR(7) NOT NULL,
    Name VARCHAR(70) NOT NULL,
    Cost DECIMAL(15, 2) NULL,
	PRIMARY KEY (Pcs_code)
)