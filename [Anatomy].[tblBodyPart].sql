SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Anatomy].[tblBodyPart](
	[BodyPartId] [bigint] IDENTITY(1,1) NOT NULL,
	[BodyPartName] [varchar](100) NOT NULL,
	[DisplayName] [varchar](100) NOT NULL,
	[Description] [text] NULL,
	[Type] [char](1) NOT NULL,
	[Image] [varchar](100) NULL,
	[HashTag] [text] NULL,
	[ParentId] [bigint] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[IsVisible] [dbo].[Flag] NOT NULL,
	[IsMale] [bit] NULL,
	[IsFemale] [bit] NULL,
	[MaleWidgetId] [bigint] NULL,
	[FemaleWidgetId] [bigint] NULL,
	[MaleWidgetAreaId] [bigint] NULL,
	[FemaleWidgetAreaId] [bigint] NULL,
	[DisplayRank] [int] NULL,
	[RawHashTag] [text] NULL,
 CONSTRAINT [PK_tblBodyPart] PRIMARY KEY CLUSTERED 
(
	[BodyPartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Anatomy].[tblBodyPart] ADD  CONSTRAINT [DF_tblBodyPart_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Anatomy].[tblBodyPart]  WITH CHECK ADD  CONSTRAINT [FK_tblBodyPart_tblUser] FOREIGN KEY([CreatedBy])
REFERENCES [UserManagement].[tblUser] ([UserId])
GO
ALTER TABLE [Anatomy].[tblBodyPart] CHECK CONSTRAINT [FK_tblBodyPart_tblUser]
GO
ALTER TABLE [Anatomy].[tblBodyPart]  WITH CHECK ADD  CONSTRAINT [FK_tblBodyPart_tblUser1] FOREIGN KEY([UpdatedBy])
REFERENCES [UserManagement].[tblUser] ([UserId])
GO
ALTER TABLE [Anatomy].[tblBodyPart] CHECK CONSTRAINT [FK_tblBodyPart_tblUser1]
GO
