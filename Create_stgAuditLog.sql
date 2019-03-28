USE [PlanEDI]
GO

/****** Object:  Table [EDI].[stgAuditLog]    Script Date: 3/28/2019 4:40:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [EDI].[stgAuditLog](
	[work_order_id] [varchar](15) NOT NULL,
	[worksta] [varchar](15) NULL,
	[wantsta] [varchar](10) NULL,
	[assignToMe] [int] NULL,
	[submitdate] [date] NULL,
	[lenDesc] [int] NULL,
	[Summary] [varchar](800) NULL,
	[detail] [varchar](max) NULL,
	[vpriority] [varchar](15) NULL,
	[datalog] [varchar](500) NULL,
	[TransExcel] [int] NOT NULL,
	[AID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CUSTTYPE] [varchar](10) NULL,
	[APPROVED] [int] NOT NULL,
	[mail1] [varchar](100) NULL,
	[mail2] [varchar](200) NULL,
	[SRID] [varchar](20) NULL,
	[FirstName] [varchar](30) NULL,
	[mailtime] [datetime] NULL,
 CONSTRAINT [workOrder_pk1] PRIMARY KEY CLUSTERED 
(
	[work_order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [DATA]
) ON [DATA] TEXTIMAGE_ON [DATA]

GO

ALTER TABLE [EDI].[stgAuditLog] ADD  DEFAULT ((0)) FOR [assignToMe]
GO

ALTER TABLE [EDI].[stgAuditLog] ADD  DEFAULT ((0)) FOR [TransExcel]
GO

ALTER TABLE [EDI].[stgAuditLog] ADD  DEFAULT ((0)) FOR [APPROVED]
GO


