# Creating PATIENT table
# Author: Amogh Bhagwat

CREATE TABLE PATIENT (
  PID varchar(15) NOT NULL,
  DOB date NULL,
  Fname varchar(15) NOT NULL,
  Minit char(1) NULL,
  Lname varchar(15) NULL,
  Apt_no int(11) NULL,
  Street varchar(15) NULL,
  City varchar(15) NULL,
  State varchar(15) NULL,
  Zipcode int(11) NULL,
  PRIMARY KEY (PID)
)
