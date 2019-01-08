USE [QA_DATA]
GO

/****** Object:  Table [QA].[SRVQNXTFLQA_CARRIERMEMREC_FL]    Script Date: 1/7/2019 9:34:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [QA].[SRVQNXTFLQA_CARRIERMEMREC_FL](
	[Sno] [int] IDENTITY(1,1) NOT NULL,
	[memid] [varchar](30) NULL,
	[carriermemid] [varchar](30) NULL,
	[headofhouse] [varchar](30) NULL,
	[guardian] [varchar](30) NULL,
	[ssn] [varchar](30) NULL,
	[Secondaryid] [varchar](30) NULL,
	[externalId] [varchar](30) NULL,
	[HIC] [varchar](30) NULL
) 

 

