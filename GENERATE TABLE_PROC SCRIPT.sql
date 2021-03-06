USE [SSIS]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/1/2018 3:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[BusinessEntityID] [int] NOT NULL,
	[LoginID] [nvarchar](256) NOT NULL,
	[OrganizationLevel] [smallint] NULL,
	[JobTitle] [nvarchar](50) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Gender] [nchar](1) NOT NULL,
	[HireDate] [date] NOT NULL,
	[VacationHours] [smallint] NOT NULL,
	[SickLeaveHours] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 12/1/2018 3:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[BusinessEntityID] [int] NOT NULL,
	[PersonType] [nchar](2) NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[EmailPromotion] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GET_EMPLOYEE_FILE_FOOTER]    Script Date: 12/1/2018 3:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_EMPLOYEE_FILE_FOOTER]
AS
BEGIN
SET NOCOUNT ON
SELECT REPLACE(SPACE(92),' ','*') +
'  SSIS  ' +
REPLACE(SPACE(92),' ','*') AS TRAILER
END
GO
/****** Object:  StoredProcedure [dbo].[GET_EMPLOYEE_FILE_HEADERS]    Script Date: 12/1/2018 3:32:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[GET_EMPLOYEE_FILE_HEADERS]
AS
BEGIN
SET NOCOUNT ON

DECLARE @EMPLOYEE INT
SELECT @EMPLOYEE = COUNT(*)
FROM  [dbo].[Employee]

SELECT 'FILE CREATED DATE:' + -- Description
CONVERT(VARCHAR(12),GETDATE(),110) + -- File Created Date
SPACE(20) + -- 80 spaces
'**********' +
' SSIS EMPLOYEE INFORMATION ' + -- Company Report Name
'**********' +
SPACE(95) AS HEADER
UNION
SELECT 'TOTAL EMPLOYEES:' +
CONVERT(VARCHAR(10),@EMPLOYEE) +
SPACE(184-LEN(CONVERT(VARCHAR(10),@EMPLOYEE))) AS HEADER
END
GO
