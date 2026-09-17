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