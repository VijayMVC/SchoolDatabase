﻿CREATE TYPE [archived].[CoursesArchiving] AS TABLE
(
	CourseId bigint IDENTITY(1,1) PRIMARY KEY,
	CourseGrade decimal(2,1),
	DateOfAssessment date,
	StudentId int,
	SchoolSubjectId varchar(7),
	EmployeeId int,
	CourseSemester int,
	TempStudentId int
)