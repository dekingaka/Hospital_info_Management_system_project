Drop Database if exists HIMS;
GO

CREATE Database HIMS
Go
Use HIMS
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessRights](
	[AccessRightID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[FunctionalityID] [bigint] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
	PRIMARY KEY CLUSTERED 
	(
		[AccessRightID] ASC
	) 
) 
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admission](
	[AdmissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientCategoryID] [int] NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[UnitId] [int] NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[AdmissionDate] [datetime] NOT NULL,
	[IPDNumber] [bigint] NOT NULL,
	[RelativeName] [nvarchar](200) NULL,
	[RelationId] [int] NULL,
	[BedId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[IsMLC] [bit] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
	CONSTRAINT [PK__Admissio__C97EEC427DFE4C43] PRIMARY KEY CLUSTERED 
	(
		[AdmissionId] ASC
	) 
) 
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advance](
	[AdvanceId] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[AdvAmount] [numeric](18, 2) NULL,
	[Used] [numeric](18, 2) NULL,
	[Refund] [numeric](18, 2) NULL,
	[Balance] [numeric](18, 2) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
	PRIMARY KEY CLUSTERED 
	(
		[AdvanceId] ASC
	) 
) 
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationFunctionality](
	[FunctionalityID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Level] [int] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FunctionalityID] ASC
) 
) 
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bed](
	[BedId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[WardId] [int] NULL,
	[RoomId] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__BedId__A8A7104054C04A45] PRIMARY KEY CLUSTERED 
(
	[BedId] ASC
) 
) 
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillId] [bigint] IDENTITY(1,1) NOT NULL,
	[BillDateTime] [datetime] NULL,
	[VisitId] [bigint] NULL,
	[AdmissionId] [bigint] NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[AdvanceAmount] [numeric](18, 2) NULL,
	[Concession] [numeric](18, 2) NULL,
	[FinalBillAmount] [numeric](18, 2) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Bill__11F2FC6A9060F41C] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
) 
) 
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charge](
	[ChargeId] [bigint] IDENTITY(1,1) NOT NULL,
	[VisitId] [bigint] NULL,
	[AdmissionId] [bigint] NULL,
	[ServiceId] [bigint] NOT NULL,
	[Rate] [numeric](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [numeric](18, 2) NOT NULL,
	[Concession] [numeric](18, 2) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Charge__17FC361B131A7AE4] PRIMARY KEY CLUSTERED 
(
	[ChargeId] ASC
) 
) 
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StateID] [int] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__City__F2D21A96E551186A] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
) 
) 
GO





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NationalityID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Country__10D160BF12515864] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
) 
) 
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsClinical] [bit] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Departme__BF50FAFB2901D316] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
) 
) 
GO





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discharge](
	[DischargeId] [bigint] IDENTITY(1,1) NOT NULL,
	[AdmissionId] [bigint] NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[DischargeDate] [datetime] NOT NULL,
	[DischargeNotes] [nvarchar](2000) NULL,
	[FileAttachedPath] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Discharg__CBC0800799D57BD3] PRIMARY KEY CLUSTERED 
(
	[DischargeId] ASC
) 
) 
GO






SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorID] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[FirstName] [nvarchar](150) NOT NULL,
	[MiddleName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NOT NULL,
	[Qualification] [nvarchar](150) NULL,
	[GenderID] [int] NULL,
	[DateOfBirth] [date] NULL,
	[ContactNo1] [nvarchar](15) NULL,
	[ContactNo2] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[AddressLine1] [nvarchar](150) NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[Pincode] [nvarchar](10) NULL,
	[CityID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Doctor__2DC00EDF448A8A51] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
) 
) 
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Gender__4E24E81738FADBDD] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
) 
) 
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceCompany](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
) 
) 
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationality](
	[NationalityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__National__F628E7A4F44C1021] PRIMARY KEY CLUSTERED 
(
	[NationalityID] ASC
) 
) 
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](150) NOT NULL,
	[MiddleName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NOT NULL,
	[GenderID] [int] NOT NULL,
	[DateOfBirth] [date] NULL,
	[ContactNo1] [nvarchar](15) NULL,
	[ContactNo2] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[AddressLine1] [nvarchar](150) NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[Pincode] [nvarchar](10) NULL,
	[CityID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
) 
) 
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientCategory](
	[PatientCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__PatientC__F659E81CA9686ED9] PRIMARY KEY CLUSTERED 
(
	[PatientCategoryID] ASC
) 
) 
GO