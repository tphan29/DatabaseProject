# Creating IN_CLERK table
# Author: Team 25

CREATE TABLE IN_CLERK (
	CID INT NOT NULL,
	EID INT NOT NULL UNIQUE,
    PRIMARY KEY (CID, EID),
    FOREIGN KEY (EID) REFERENCES EMPLOYEE(EID) ON DELETE CASCADE ON UPDATE CASCADE
)