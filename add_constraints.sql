ALTER TABLE Student
ADD CONSTRAINT fks_course_code FOREIGN KEY(CourseCode) REFERENCES Course(CourseCode)
ON DELETE RESTRICT
ON UPDATE CASCADE;

ALTER TABLE PQualification
ADD CONSTRAINT fkp_student_id FOREIGN KEY(StudentID) REFERENCES Student(StudentID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Course
ADD CONSTRAINT fkc_faculty_id FOREIGN KEY(FacultyID) REFERENCES Faculty(FacultyID)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE ALStudent_Subject
ADD CONSTRAINT fka_student_id FOREIGN KEY(StudentID) REFERENCES Student(StudentID)
ON DELETE CASCADE
ON UPDATE CASCADE,
ADD CONSTRAINT fka_subject_code FOREIGN KEY(SubjectCode) REFERENCES ALSubject(SubjectCode)
ON DELETE RESTRICT
ON UPDATE CASCADE;

ALTER TABLE Subject_
ADD CONSTRAINT fksu_course_code FOREIGN KEY(CourseCode) REFERENCES Course(CourseCode)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Enrollment
ADD CONSTRAINT fke_student_id FOREIGN KEY(StudentID) REFERENCES Student(StudentID)
ON DELETE CASCADE
ON UPDATE CASCADE,
ADD CONSTRAINT fke_subject_code FOREIGN KEY(SubjectCode) REFERENCES Subject_(SubjectCode)
ON DELETE RESTRICT
ON UPDATE CASCADE,
ADD CONSTRAINT fke_invoice_id FOREIGN KEY(InvoiceID) REFERENCES Payment(InvoiceID)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE Lecture
ADD CONSTRAINT fkl_staff_id FOREIGN KEY(Staff_ID) REFERENCES Lecturer(Staff_ID)
ON DELETE SET NULL
ON UPDATE CASCADE,
ADD CONSTRAINT fkl_subject_code FOREIGN KEY(SubjectCode) REFERENCES Subject_(SubjectCode)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Lecturer
ADD CONSTRAINT fkl_faculty_id FOREIGN KEY(FacultyID) REFERENCES Faculty(FacultyID)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE Assessment
ADD CONSTRAINT fka_enrollment_id FOREIGN KEY(EnrollmentID) REFERENCES Enrollment(EnrollmentID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE LabSession
ADD CONSTRAINT fkla_subject_code FOREIGN KEY(SubjectCode) REFERENCES Subject_(SubjectCode)
ON DELETE CASCADE
ON UPDATE CASCADE,
ADD CONSTRAINT fkl_lab_id FOREIGN KEY(LabID) REFERENCES Laboratory(LabID)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE LabSession_Instructor
ADD CONSTRAINT fklabs_lab_session_id FOREIGN KEY(LabSessionID) REFERENCES LabSession(LabSessionID)
ON DELETE CASCADE
ON UPDATE CASCADE,
ADD CONSTRAINT fklabs_staff_id FOREIGN KEY(Staff_ID) REFERENCES Instructor(Staff_ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE LabSession_Student
ADD CONSTRAINT fkl_lab_session_id FOREIGN KEY(LabSessionID) REFERENCES LabSession(LabSessionID)
ON DELETE CASCADE
ON UPDATE CASCADE,
ADD CONSTRAINT fkl_student_id FOREIGN KEY(StudentID) REFERENCES Student(StudentID)
ON DELETE CASCADE
ON UPDATE CASCADE;
