CREATE TABLE Student (
	StudentID INT(6) AUTO_INCREMENT,
    NICNumber CHAR(12) NOT NULL UNIQUE,
    IndexNumber INT(8) NOT NULL UNIQUE,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    DOB DATE NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Phone CHAR(12) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Photo VARCHAR(255) NULL UNIQUE,
    Signature VARCHAR(255) NULL UNIQUE,
    CourseCode CHAR(4) NULL DEFAULT NULL,
    PRIMARY KEY(StudentID)
);

CREATE TABLE UndergraduateStudent (
	StudentID INT(6),
    IslandRank INT(5) NOT NULL,
    AL_Year INT(4) NOT NULL,
    PRIMARY KEY(StudentID)
);

CREATE TABLE PQualification (
	StudentID INT(6),
    QualificationType VARCHAR(100) NOT NULL,
    Institute VARCHAR(255) NOT NULL,
    YearOfCompletion INT(4) NOT NULL,
    PRIMARY KEY(StudentID, QualificationType)
);

CREATE TABLE Course (
	CourseCode CHAR(4),
    Title VARCHAR(100) NOT NULL,
    Description VARCHAR(255) NULL,
    Postgraduate BOOLEAN NOT NULL,
    Special BOOLEAN NOT NULL,
    FacultyID INT(1) NULL,
    PRIMARY KEY(CourseCode)
);

CREATE TABLE ALStudent_Subject (
	StudentID INT(6),
    SubjectCode INT(4),
    Result ENUM('A', 'B', 'C', 'F') NOT NULL,
    PRIMARY KEY(StudentID, SubjectCode)
);

CREATE TABLE Faculty (
	FacultyID INT(1),
    FacultyName VARCHAR(255) NOT NULL,
    PRIMARY KEY(FacultyID)
);
 
CREATE TABLE ALSubject (
	SubjectCode INT(4),
    Title VARCHAR(50) NOT NULL,
    PRIMARY KEY(SubjectCode)
);

CREATE TABLE Subject_ (
	SubjectCode CHAR(10),
    CourseCode CHAR(4) NOT NULL,
    Title VARCHAR(50) NOT NULL,
    Fee INT(4) NOT NULL,
    Optional BOOLEAN,
    NumOfLectures INT(2) NULL,
    NumOfLabSessions INT(2) NULL,
    NumOfPracticals INT(2) NULL,
    NumOfAssessments INT(2) NULL,
    Credits INT(2) NOT NULL,
    Semester INT(1) NULL,
    PRIMARY KEY(SubjectCode)
);

CREATE TABLE Enrollment (
	EnrollmentID INT(8) AUTO_INCREMENT,
	StudentID INT(6) NOT NULL,
    SubjectCode CHAR(10) NOT NULL,
    ResultGrade ENUM('A', 'B', 'C', 'D', 'E', 'F', 'R')  NOT NULL DEFAULT 'R',
    InvoiceID INT(4) NULL,
    PRIMARY KEY(EnrollmentID)
);

CREATE TABLE Payment (
	InvoiceID INT(4) AUTO_INCREMENT,
    Description VARCHAR(100) NOT NULL,
    Amount DOUBLE PRECISION(8, 2) NOT NULL,
    PRIMARY KEY(InvoiceID)
);

CREATE TABLE Lecturer (
	Staff_ID INT(6) AUTO_INCREMENT,
    FacultyID INT(1) NULL,
    NICNumber CHAR(12) NOT NULL UNIQUE,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    DOB DATE NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Phone CHAR(12) NOT NULL,
    Photo VARCHAR(255) NULL UNIQUE,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Signature VARCHAR(255) NULL UNIQUE,
    PRIMARY KEY(Staff_ID)
);

CREATE TABLE Lecture (
	LectureID INT(4),
    Staff_ID INT(6) NULL,
    SubjectCode CHAR(10) NOT NULL,
    FromTime TIME NOT NULL,
    ToTime TIME NOT NULL,
    FromDate DATE NOT NULL,
    ToDate DATE NOT NULL,
    PRIMARY KEY(LectureID)
);

CREATE TABLE Assessment (
	AssessmentID INT(4) AUTO_INCREMENT,
    EnrollmentID INT(8) NOT NULL,
    AssessmentType CHAR(8) NOT NULL,
    Title VARCHAR(50) NOT NULL,
    ResultGrade ENUM('A', 'B', 'C', 'D', 'E', 'F', 'R')  NOT NULL DEFAULT 'R',
    PRIMARY KEY(AssessmentID)
);

CREATE TABLE Instructor (
	Staff_ID INT(6) AUTO_INCREMENT,
    NICNumber CHAR(12) NOT NULL UNIQUE,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    DOB DATE NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Phone CHAR(12) NOT NULL,
    Photo VARCHAR(255) NULL UNIQUE,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Signature VARCHAR(255) NULL UNIQUE,
    PRIMARY KEY(Staff_ID)
);

CREATE TABLE LabSession (
	LabSessionID INT(6),
    SubjectCode CHAR(10) NOT NULL,
    LabID CHAR(4) NULL,
    FromTime TIME NOT NULL,
    ToTime TIME NOT NULL,
    FromDate DATE NOT NULL,
    ToDate DATE NOT NULL,
    PRIMARY KEY(LabSessionID)
);

CREATE TABLE LabSession_Student (
	LabSessionID INT(6),
    StudentID INT(6),
    PRIMARY KEY(LabSessionID, StudentID)
);

CREATE TABLE LabSession_Instructor (
	LabSessionID INT(6),
    Staff_ID INT(6),
    PRIMARY KEY(LabSessionID, Staff_ID)
);

CREATE TABLE Laboratory (
	LabID CHAR(4),
    Description VARCHAR(100) NOT NULL,
    PRIMARY KEY(LabID)
);


ALTER TABLE Instructor AUTO_INCREMENT = 110000;
ALTER TABLE Lecturer AUTO_INCREMENT = 120000;