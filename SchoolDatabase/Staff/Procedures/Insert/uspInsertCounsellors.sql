﻿ CREATE PROCEDURE [staff].[uspInsertCounsellors]
	@CounsellorId int,
	@CounsellorEmployeeId int,
	@Email nvarchar(80),
	@PhoneNumber nvarchar(15)
AS
	INSERT INTO staff.Counsellors(CounsellorId, CounsellorEmployeeId, Email, PhoneNumber)
	VALUES (@CounsellorId, @CounsellorEmployeeId, @Email, @PhoneNumber)
RETURN 0
