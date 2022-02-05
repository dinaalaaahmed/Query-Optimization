USE COMPANY;
CREATE TABLE Department(
    departmentName varchar(255),
    departmentNumber int,
    PRIMARY KEY (departmentNumber)

);

CREATE TABLE Job(
    ID int,
    minSalary DOUBLE PRECISION, 
    maxSalary DOUBLE PRECISION,
    jobTitle varchar(255),
    PRIMARY KEY (ID),

);

CREATE TABLE Employee(
    SSN int,
    firstName varchar(255),
    lastName varchar(255),
    birthDate Date,
    address varchar(255),
    sex varchar(255),
    departmentNumber int,
    salary DOUBLE PRECISION,
    jobID int,
    supervisorSSN int,
    PRIMARY KEY (SSN),
    FOREIGN KEY (supervisorSSN) REFERENCES Employee(SSN),
    FOREIGN KEY (jobID) REFERENCES Job(ID),
    FOREIGN KEY (departmentNumber) REFERENCES Department(departmentNumber)
);


CREATE TABLE Project(
    projectName varchar(255),
    projectNumber int,
    projectLocation varchar(255),
    departmentNumber int,
    PRIMARY KEY (projectNumber),
    FOREIGN KEY (departmentNumber) REFERENCES Department(departmentNumber)
);
CREATE TABLE Department_Locations(
    departmentLocation varchar(255),
    departmentNumber int,
    PRIMARY KEY (departmentLocation),
    FOREIGN KEY (departmentNumber) REFERENCES Department(departmentNumber)
);

CREATE TABLE Dependent_Employee(
    dependentName varchar(255),
    relationship varchar(255),
    birthDate Date,
    sex varchar(255),
    dependentSSN int,
    PRIMARY KEY (dependentName, dependentSSN),
    FOREIGN KEY (dependentSSN) REFERENCES Employee(SSN)
);
CREATE TABLE Works_On(
    projectNumber int,
    employeeSSN int,
    hours int,
    PRIMARY KEY (projectNumber, employeeSSN),
    FOREIGN KEY (employeeSSN) REFERENCES Employee(SSN),
    FOREIGN KEY (projectNumber) REFERENCES Project(projectNumber)

);