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


