# Creating EMERG_CONTACT table
# Author: Amogh Bhagwat

CREATE TABLE EMERG_CONTACT (
  Patient_ID varchar(15) NOT NULL,
  Contact_Name varchar(15) NOT NULL,
  Emerg_Phone_no varchar(45) NOT NULL,
  PRIMARY KEY (Patient_ID, Contact_Name, Emerg_Phone_no),
  CONSTRAINT PID FOREIGN KEY (Patient_ID) REFERENCES PATIENT (PID) ON UPDATE CASCADE ON DELETE CASCADE 
)
