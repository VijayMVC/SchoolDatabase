﻿CREATE TABLE [archived].[ArchivedCourses]
(
	CourseId int IDENTITY (1,1),
    CourseGrade decimal(2,1),
    DateOfAssessment DATE,
    PresentStudentId int,
	ArchivedStudentId int,
    PresentSchoolSubjectId varchar(7), 
	ArchivedSchoolSubjectId varchar(7),
    PresentEmployeeId int,
	ArchivedEmployeeId int,
	CourseSemester int NOT NULL,
	CONSTRAINT FK_ArchivedCoursesSemesters FOREIGN KEY (CourseSemester) REFERENCES utilities.Semesters,
	CONSTRAINT FK_ArchivedCoursesGrades FOREIGN KEY (CourseGrade) REFERENCES utilities.Grades,
	CONSTRAINT FK_ArchivedCoursesStudents FOREIGN KEY (PresentStudentId) REFERENCES listeners.Students,
	CONSTRAINT FK_ArchivedCoursesArchivedStudents FOREIGN KEY (ArchivedStudentId) REFERENCES archived.ArchivedStudents,
	CONSTRAINT FK_ArchivedCoursesSchoolSubjects FOREIGN KEY (PresentSchoolSubjectId) REFERENCES studies.SchoolSubjects,
	CONSTRAINT FK_ArchivedCoursesArchivedSchoolSubjects FOREIGN KEY (ArchivedSchoolSubjectId) REFERENCES archived.ArchivedSchoolSubjects,
	CONSTRAINT FK_ArchivedCoursesEmployees FOREIGN KEY (PresentEmployeeId) REFERENCES staff.Employees,
	CONSTRAINT FK_ArchivedCoursesArchivedEmployees FOREIGN KEY (ArchivedEmployeeId) REFERENCES archived.ArchivedEmployees,
	CONSTRAINT PK_ArchivedCourses PRIMARY KEY (CourseId)
)
