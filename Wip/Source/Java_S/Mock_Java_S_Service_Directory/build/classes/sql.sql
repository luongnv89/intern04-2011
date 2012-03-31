USE [Service_Directory4.0]
GO
/****** Object:  Table [dbo].[User2]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User2](
	[UserID] [char](15) NOT NULL,
	[Account] [char](15) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Role] [char](15) NOT NULL,
	[Password] [char](15) NOT NULL,
 CONSTRAINT [PK_User2] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[User2] ([UserID], [Account], [Email], [Role], [Password]) VALUES (N'Intern04       ', N'luannt004      ', N'thanhluanhd@gmail.com', N'normal         ', N'123456         ')
/****** Object:  Table [dbo].[User]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [char](15) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Role] [char](15) NOT NULL,
	[Password] [char](15) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (1, N'England')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (2, N'USA')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (3, N'Vietnam')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (4, N'France')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (5, N'Italy')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (6, N'Thailand')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (7, N'Australia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (8, N'Singapore')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (9, N'China')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (10, N'Korea')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (11, N'Japan')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (12, N'Germany')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (13, N'Egypt')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (14, N'Spain')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (15, N'Portugal')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (16, N'Brazil')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (17, N'Argentina')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (18, N'Cuba')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (19, N'Indonesia')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (20, N'Brunei')
SET IDENTITY_INSERT [dbo].[Country] OFF
/****** Object:  Table [dbo].[Contact]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[StatusActive] [bit] NOT NULL,
	[SurName] [nvarchar](50) NOT NULL,
	[MobilePhone] [char](15) NULL,
	[Email] [nvarchar](50) NULL,
	[ContactType] [nvarchar](50) NOT NULL,
	[KnowAs] [nvarchar](50) NULL,
	[OfficePhone] [char](15) NULL,
	[STHomePhone] [char](15) NULL,
	[ManagerName] [nvarchar](50) NULL,
	[BestContactMethod] [nvarchar](50) NULL,
	[JobRole] [nvarchar](50) NULL,
	[WorkBase] [nvarchar](50) NULL,
	[JobTitle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (2, N'First Name 1', NULL, 1, N'Sur Name 1', NULL, NULL, N'Type 1', NULL, NULL, NULL, NULL, N'Medthod 1', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (3, N'First Name 2', NULL, 1, N'Sur Name 2', NULL, NULL, N'Type 2', NULL, NULL, NULL, NULL, N'Medthod 3', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (4, N'First Name 3', NULL, 1, N'Sur Name 3', NULL, NULL, N'Type 3', NULL, NULL, NULL, NULL, N'Medthod 2', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (5, N'First Name 4', NULL, 1, N'Sur Name 4', NULL, NULL, N'Type 4', NULL, NULL, NULL, NULL, N'Medthod 6', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (6, N'First Name 5', NULL, 1, N'Sur Name 5', NULL, NULL, N'Type 5', NULL, NULL, NULL, NULL, N'Medthod 5', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (7, N'First Name 6', NULL, 1, N'Sur Name 6', NULL, NULL, N'Type 2', NULL, NULL, NULL, NULL, N'Medthod 4', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (8, N'First Name 44', NULL, 0, N'Sur Name 21', NULL, NULL, N'Type 4', NULL, NULL, NULL, NULL, N'Medthod 1', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (9, N'First Name 35', NULL, 1, N'Sur Name 7', NULL, NULL, N'Type 1', NULL, NULL, NULL, NULL, N'Medthod 2', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (10, N'First Name 7', NULL, 1, N'Sur Name 8', NULL, NULL, N'Type 2', NULL, NULL, NULL, NULL, N'Medthod 3', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (11, N'First Name 10', NULL, 0, N'Sur Name 11', NULL, NULL, N'Type 3', NULL, NULL, NULL, NULL, N'Medthod 4', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (14, N'First Name 9', NULL, 1, N'Sur Name 112', NULL, NULL, N'Type 2', NULL, NULL, NULL, NULL, N'Medthod 5', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (15, N'First Name 99', NULL, 1, N'Sur Name 12', NULL, NULL, N'Type 4', NULL, NULL, NULL, NULL, N'Medthod 6', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (16, N'First Name 12', NULL, 1, N'Sur Name 19', NULL, NULL, N'Type 1', NULL, NULL, NULL, NULL, N'Medthod 1', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (19, N'First Name 33', NULL, 1, N'Sur Name 15', NULL, NULL, N'Type 3', NULL, NULL, NULL, NULL, N'Medthod 2', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (20, N'First  Name 32', NULL, 1, N'Sur Name 32', NULL, NULL, N'Type 5', NULL, NULL, NULL, NULL, N'Medthod 3', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (21, N'First Name 17', NULL, 1, N'Sur Name 17', NULL, NULL, N'Type 4', NULL, NULL, NULL, NULL, N'Medthod 4', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (22, N'First Name 55', NULL, 1, N'Sur Name 22', NULL, NULL, N'Type 2', NULL, NULL, NULL, NULL, N'Medthod 5', NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [StatusActive], [SurName], [MobilePhone], [Email], [ContactType], [KnowAs], [OfficePhone], [STHomePhone], [ManagerName], [BestContactMethod], [JobRole], [WorkBase], [JobTitle]) VALUES (23, N'First Name 111', NULL, 1, N'Sur Name 67', NULL, NULL, N'Type 1', NULL, NULL, NULL, NULL, N'Medthod 6', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Contact] OFF
/****** Object:  Table [dbo].[GovOfficeRegion]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GovOfficeRegion](
	[GovOfficeRegionID] [int] IDENTITY(1,1) NOT NULL,
	[GovOfficeRegionName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_GovOfficeRegion] PRIMARY KEY CLUSTERED 
(
	[GovOfficeRegionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GovOfficeRegion] ON
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (1, N'Office 1')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (2, N'Office 2')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (3, N'Office 3')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (4, N'Office 4')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (5, N'Office 5')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (6, N'Office 6')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (7, N'Office 7')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (8, N'Office 8')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (9, N'Office 9')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (10, N'Office 10')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (11, N'Office 11')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (12, N'Office 12')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (13, N'Office 13')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (14, N'Office 14')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (15, N'Office 15')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (16, N'Office 16')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (17, N'Office 17')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (18, N'Office 18')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (19, N'Office 19')
INSERT [dbo].[GovOfficeRegion] ([GovOfficeRegionID], [GovOfficeRegionName]) VALUES (20, N'Office 20')
SET IDENTITY_INSERT [dbo].[GovOfficeRegion] OFF
/****** Object:  Table [dbo].[Premise]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Premise](
	[PremiseID] [int] IDENTITY(1,1) NOT NULL,
	[PremiseName] [nvarchar](50) NULL,
	[LocationName] [nvarchar](50) NOT NULL,
	[KnowAs] [nvarchar](50) NULL,
 CONSTRAINT [PK_Premise] PRIMARY KEY CLUSTERED 
(
	[PremiseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenceData]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReferenceData](
	[RefID] [int] IDENTITY(1,1) NOT NULL,
	[RefCode] [char](15) NOT NULL,
	[RefValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ReferenceData] PRIMARY KEY CLUSTERED 
(
	[RefID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ReferenceData] ON
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (1, N'RefCode 1      ', N'Ref Value 1')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (2, N'RefCode 2      ', N'Ref Value 2')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (3, N'RefCode 3      ', N'Ref Value 3')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (4, N'RefCode 4      ', N'Ref Value 4')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (5, N'RefCode 5      ', N'Ref Value 5')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (6, N'RefCode 6      ', N'Ref Value 6')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (7, N'RefCode 7      ', N'Ref Value 7')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (8, N'RefCode 8      ', N'Ref Value 8')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (9, N'RefCode 9      ', N'Ref Value 9')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (10, N'RefCode 10     ', N'Ref Value 10')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (11, N'RefCode 11     ', N'Ref Value 11')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (12, N'RefCode 12     ', N'Ref Value 12')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (13, N'RefCode 13     ', N'Ref Value 13')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (14, N'RefCode 14     ', N'Ref Value 14')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (15, N'RefCode 15     ', N'Ref Value 15')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (16, N'RefCode 16     ', N'Ref Value 16')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (17, N'RefCode 17     ', N'Ref Value 17')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (18, N'RefCode 18     ', N'Ref Value 18')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (19, N'RefCode 19     ', N'Ref Value 19')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (20, N'RefCode 20     ', N'Ref Value 20')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (21, N'RefCode 21     ', N'Ref Value 21')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (22, N'RefCode 22     ', N'Ref Value 22')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (23, N'RefCode 23     ', N'Ref Value 23')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (24, N'RefCode 24     ', N'Ref Value 24')
INSERT [dbo].[ReferenceData] ([RefID], [RefCode], [RefValue]) VALUES (25, N'RefCode 25     ', N'Ref Value 25')
SET IDENTITY_INSERT [dbo].[ReferenceData] OFF
/****** Object:  Table [dbo].[Programme]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programme](
	[ProgrammeID] [int] IDENTITY(1,1) NOT NULL,
	[ContactID] [int] NOT NULL,
	[ProgrammeName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Programme] PRIMARY KEY CLUSTERED 
(
	[ProgrammeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListItem]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListItem](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NULL,
	[ItemName] [nvarchar](20) NULL,
 CONSTRAINT [PK_ListItem] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ListItem] ON
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (1, 1, N'Org. Spec. 1')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (2, 1, N'Org. Spec. 2')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (3, 1, N'Org. Spec. 3')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (4, 1, N'Org. Spec. 4')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (5, 1, N'Org. Spec. 5')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (6, 1, N'Org. Spec. 6')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (7, 1, N'Org. Spec. 7')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (8, 1, N'Org. Spec. 8')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (9, 1, N'Org. Spec. 9')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (10, 1, N'Org. Spec. 10')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (11, 2, N'Service Dis. Cap. 1')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (12, 2, N'Service Dis. Cap. 2')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (13, 2, N'Service Dis. Cap. 3')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (14, 2, N'Service Dis. Cap. 4')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (15, 2, N'Service Dis. Cap. 5')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (16, 2, N'Service Dis. Cap. 6')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (17, 2, N'Service Dis. Cap. 7')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (18, 2, N'Service Dis. Cap. 8')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (19, 2, N'Service Dis. Cap. 9')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (20, 2, N'Service Dis. Cap. 10')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (21, 3, N'Service Bar. Cap. 1')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (22, 3, N'Service Bar. Cap. 2')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (23, 3, N'Service Bar. Cap. 3')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (24, 3, N'Service Bar. Cap. 4')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (25, 3, N'Service Bar. Cap. 5')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (26, 3, N'Service Bar. Cap. 6')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (27, 3, N'Service Bar. Cap. 7')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (28, 3, N'Service Bar. Cap. 8')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (29, 3, N'Service Bar. Cap. 9')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (30, 3, N'Service Bar. Cap. 10')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (31, 4, N'Service Ben. Cap. 1')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (32, 4, N'Service Ben. Cap. 2')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (33, 4, N'Service Ben. Cap. 3')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (34, 4, N'Service Ben. Cap. 4')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (35, 4, N'Service Ben. Cap. 5')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (36, 4, N'Service Ben. Cap. 6')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (37, 4, N'Service Ben. Cap. 7')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (38, 4, N'Service Ben. Cap. 8')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (39, 4, N'Service Ben. Cap. 9')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (40, 4, N'Service Ben. Cap. 10')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (41, 5, N'Personal CC 1')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (42, 5, N'Personal CC 2')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (43, 5, N'Personal CC 3')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (44, 5, N'Personal CC 4')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (45, 5, N'Personal CC 5')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (46, 5, N'Personal CC 6')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (47, 5, N'Personal CC 7')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (48, 5, N'Personal CC 8')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (49, 5, N'Personal CC 9')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (50, 5, N'Personal CC 10')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (51, 6, N'Ethinicity Cap. 1')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (52, 6, N'Ethinicity Cap. 2')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (53, 6, N'Ethinicity Cap. 3')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (54, 6, N'Ethinicity Cap. 4')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (55, 6, N'Ethinicity Cap. 5')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (56, 6, N'Ethinicity Cap. 6')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (57, 6, N'Ethinicity Cap. 7')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (58, 6, N'Ethinicity Cap. 8')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (59, 6, N'Ethinicity Cap. 9')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (60, 6, N'Ethinicity Cap. 10')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (61, 7, N'Accreditation 1')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (62, 7, N'Accreditation 2')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (63, 7, N'Accreditation 3')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (64, 7, N'Accreditation 4')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (65, 7, N'Accreditation 5')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (66, 7, N'Accreditation 6')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (67, 7, N'Accreditation 7')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (68, 7, N'Accreditation 8')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (69, 7, N'Accreditation 9')
INSERT [dbo].[ListItem] ([ItemID], [GroupID], [ItemName]) VALUES (70, 7, N'Accreditation 10')
SET IDENTITY_INSERT [dbo].[ListItem] OFF
/****** Object:  Table [dbo].[County]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County](
	[CountyID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NOT NULL,
	[CountyName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_County] PRIMARY KEY CLUSTERED 
(
	[CountyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[County] ON
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (2, 1, N'London')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (4, 1, N'Manchester')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (5, 3, N'Ha Noi')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (6, 3, N'HoChiMinh City')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (7, 3, N'Da Nang')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (8, 4, N'Paris')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (9, 5, N'Roma')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (10, 5, N'Milan')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (11, 9, N'Bejing')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (12, 10, N'Seoul')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (13, 11, N'Kyoto')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (14, 11, N'Tokyo')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (15, 14, N'Madrid')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (16, 2, N'New York')
INSERT [dbo].[County] ([CountyID], [CountryID], [CountyName]) VALUES (17, 2, N'Washington')
SET IDENTITY_INSERT [dbo].[County] OFF
/****** Object:  Table [dbo].[Service]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](50) NULL,
	[ShortDescript] [nvarchar](50) NULL,
	[SubType] [nvarchar](50) NULL,
	[ContactID] [int] NOT NULL,
	[ClientDescription] [nvarchar](50) NULL,
	[ServiceAttendance] [nvarchar](50) NULL,
	[ServiceStartExpected] [datetime] NULL,
	[ServiceStartDate] [datetime] NULL,
	[ServiceEndDate] [datetime] NULL,
	[StatusServiceExtendable] [bit] NULL,
	[StatusServiceActive] [bit] NULL,
	[ServiceFullDescription] [nvarchar](max) NULL,
	[DeptCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrustRegion]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrustRegion](
	[TrustRegionID] [int] IDENTITY(1,1) NOT NULL,
	[TrustRegionName] [nvarchar](50) NOT NULL,
	[TrustRegionDescription] [nvarchar](max) NOT NULL,
	[CountryID] [int] NOT NULL,
 CONSTRAINT [PK_TrustRegion] PRIMARY KEY CLUSTERED 
(
	[TrustRegionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TrustRegion] ON
INSERT [dbo].[TrustRegion] ([TrustRegionID], [TrustRegionName], [TrustRegionDescription], [CountryID]) VALUES (2, N'Trust Reg 1', N'Des ??!!@@@', 3)
INSERT [dbo].[TrustRegion] ([TrustRegionID], [TrustRegionName], [TrustRegionDescription], [CountryID]) VALUES (3, N'Trust Reg 2', N'abc xyz', 4)
INSERT [dbo].[TrustRegion] ([TrustRegionID], [TrustRegionName], [TrustRegionDescription], [CountryID]) VALUES (5, N'Trust Reg 3', N'asassasaSGDFGD', 5)
INSERT [dbo].[TrustRegion] ([TrustRegionID], [TrustRegionName], [TrustRegionDescription], [CountryID]) VALUES (7, N'TRUST 4444', N'TRSUT 467', 7)
INSERT [dbo].[TrustRegion] ([TrustRegionID], [TrustRegionName], [TrustRegionDescription], [CountryID]) VALUES (8, N'Trust Reg 551', N'Des in country', 9)
INSERT [dbo].[TrustRegion] ([TrustRegionID], [TrustRegionName], [TrustRegionDescription], [CountryID]) VALUES (9, N'Trust Reg 6', N'Descriptionnnnnnnnn', 12)
INSERT [dbo].[TrustRegion] ([TrustRegionID], [TrustRegionName], [TrustRegionDescription], [CountryID]) VALUES (11, N'Trust 1111', N'abcbccbc', 15)
SET IDENTITY_INSERT [dbo].[TrustRegion] OFF
/****** Object:  Table [dbo].[TrustDistrict]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrustDistrict](
	[TrustDistrictID] [int] IDENTITY(1,1) NOT NULL,
	[TrustDistrictName] [nvarchar](150) NOT NULL,
	[TrustDistrictDescription] [nvarchar](max) NOT NULL,
	[TrustRegionID] [int] NOT NULL,
 CONSTRAINT [PK_TrustDistrict] PRIMARY KEY CLUSTERED 
(
	[TrustDistrictID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TrustDistrict] ON
INSERT [dbo].[TrustDistrict] ([TrustDistrictID], [TrustDistrictName], [TrustDistrictDescription], [TrustRegionID]) VALUES (3, N'District 1', N'Des 11111', 2)
INSERT [dbo].[TrustDistrict] ([TrustDistrictID], [TrustDistrictName], [TrustDistrictDescription], [TrustRegionID]) VALUES (4, N'District 2', N'Des 22222', 5)
INSERT [dbo].[TrustDistrict] ([TrustDistrictID], [TrustDistrictName], [TrustDistrictDescription], [TrustRegionID]) VALUES (7, N'District 3', N'Des 333333', 7)
INSERT [dbo].[TrustDistrict] ([TrustDistrictID], [TrustDistrictName], [TrustDistrictDescription], [TrustRegionID]) VALUES (9, N'District 4', N'Des 44444', 3)
INSERT [dbo].[TrustDistrict] ([TrustDistrictID], [TrustDistrictName], [TrustDistrictDescription], [TrustRegionID]) VALUES (10, N'District 5', N'Des 77777', 8)
INSERT [dbo].[TrustDistrict] ([TrustDistrictID], [TrustDistrictName], [TrustDistrictDescription], [TrustRegionID]) VALUES (11, N'District 6', N'Des 9999', 9)
INSERT [dbo].[TrustDistrict] ([TrustDistrictID], [TrustDistrictName], [TrustDistrictDescription], [TrustRegionID]) VALUES (12, N'District 7', N'Des 90790809sdfsd', 11)
INSERT [dbo].[TrustDistrict] ([TrustDistrictID], [TrustDistrictName], [TrustDistrictDescription], [TrustRegionID]) VALUES (17, N'District 8', N'akjdhjsadSDSAD', 11)
SET IDENTITY_INSERT [dbo].[TrustDistrict] OFF
/****** Object:  Table [dbo].[Town]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town](
	[TownID] [int] IDENTITY(1,1) NOT NULL,
	[CountyID] [int] NOT NULL,
	[TownName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[TownID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Town] ON
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (3, 2, N'Town 12')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (6, 4, N'Town 14 - 1')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (8, 4, N'Town 14 - 2')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (9, 6, N'Town 26')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (11, 7, N'Town 37')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (12, 5, N'Town 35')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (13, 8, N'Town 48')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (15, 9, N'Town 91')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (16, 9, N'Town 92')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (17, 9, N'Town 99')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (18, 10, N'Town 102')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (19, 12, N'Town 126')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (20, 13, N'Town 137')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (21, 17, N'Town 171')
INSERT [dbo].[Town] ([TownID], [CountyID], [TownName]) VALUES (22, 17, N'Town 172')
SET IDENTITY_INSERT [dbo].[Town] OFF
/****** Object:  Table [dbo].[Premise_Service]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Premise_Service](
	[Pre_Ser_ID] [int] IDENTITY(1,1) NOT NULL,
	[PremiseID] [int] NULL,
	[ServiceID] [int] NULL,
 CONSTRAINT [PK_Premise_Service] PRIMARY KEY CLUSTERED 
(
	[Pre_Ser_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gov_County]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gov_County](
	[Gov_County_ID] [int] IDENTITY(1,1) NOT NULL,
	[GovOfficeRegionID] [int] NULL,
	[CountyID] [int] NULL,
 CONSTRAINT [PK_Gov_County] PRIMARY KEY CLUSTERED 
(
	[Gov_County_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Gov_County] ON
INSERT [dbo].[Gov_County] ([Gov_County_ID], [GovOfficeRegionID], [CountyID]) VALUES (1, 1, 7)
INSERT [dbo].[Gov_County] ([Gov_County_ID], [GovOfficeRegionID], [CountyID]) VALUES (2, 2, 8)
INSERT [dbo].[Gov_County] ([Gov_County_ID], [GovOfficeRegionID], [CountyID]) VALUES (3, 3, 9)
INSERT [dbo].[Gov_County] ([Gov_County_ID], [GovOfficeRegionID], [CountyID]) VALUES (4, 4, 10)
INSERT [dbo].[Gov_County] ([Gov_County_ID], [GovOfficeRegionID], [CountyID]) VALUES (5, 5, 11)
INSERT [dbo].[Gov_County] ([Gov_County_ID], [GovOfficeRegionID], [CountyID]) VALUES (6, 6, 12)
INSERT [dbo].[Gov_County] ([Gov_County_ID], [GovOfficeRegionID], [CountyID]) VALUES (7, 7, 13)
INSERT [dbo].[Gov_County] ([Gov_County_ID], [GovOfficeRegionID], [CountyID]) VALUES (8, 8, 14)
INSERT [dbo].[Gov_County] ([Gov_County_ID], [GovOfficeRegionID], [CountyID]) VALUES (9, 9, 11)
INSERT [dbo].[Gov_County] ([Gov_County_ID], [GovOfficeRegionID], [CountyID]) VALUES (11, 10, 15)
INSERT [dbo].[Gov_County] ([Gov_County_ID], [GovOfficeRegionID], [CountyID]) VALUES (12, 11, 16)
SET IDENTITY_INSERT [dbo].[Gov_County] OFF
/****** Object:  Table [dbo].[Address]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[PostCode] [char](15) NOT NULL,
	[TownID] [int] NOT NULL,
	[Ward] [nvarchar](50) NULL,
	[Borough] [nvarchar](50) NULL,
	[LocalAuthority] [nvarchar](50) NULL,
	[UnitaryAuthority] [nvarchar](50) NULL,
	[NHSAuthority] [nvarchar](50) NULL,
	[AddressLine1] [nvarchar](50) NOT NULL,
	[AddressLine2] [nvarchar](50) NULL,
	[AddressLine3] [nvarchar](50) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Address] ON
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (4, N'AddrPC01       ', 3, N'Ward 1', N'Borough 1', N'Local Au 1', N'Unitary Au 1', N'NHS 1', N'Address Line 1 - 01', N'Address Line 2 - 01', N'Address Line 3 - 01')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (6, N'AddrPC02       ', 3, N'Ward 2', N'Borough 2', N'Local Au 2', N'Unitary Au 2', N'NHS 2', N'Address Line 1 - 02', N'Address Line 2 - 02', N'Address Line 3 - 02')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (7, N'AddrPC03       ', 3, N'Ward 3', N'Borough 3', N'Local Au 3', N'Unitary Au 3', N'NHS 3', N'Address Line 1 - 03', N'Address Line 2 - 03', N'Address Line 3 - 03')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (8, N'AddrPC04       ', 8, N'Ward 4', N'Borough 4', N'Local Au 4', N'Unitary Au 4', N'NHS 4', N'Address Line 1 - 04', N'Address Line 2 - 04', N'Address Line 3 - 04')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (9, N'AddrPC05       ', 9, N'Ward 5', N'Borough 5', N'Local Au 5', N'Unitary Au 5', N'NHS 5', N'Address Line 1 - 05', N'Address Line 2 - 05', N'Address Line 3 - 05')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (10, N'AddrPC06       ', 9, N'Ward 6', N'Borough 6', N'Local Au 6', N'Unitary Au 6', N'NHS 6', N'Address Line 1 - 06', N'Address Line 2 - 06', N'Address Line 3 - 06')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (11, N'AddrPC07       ', 12, N'Ward 7', N'Borough 7', N'Local Au 7', N'Unitary Au 7', N'NHS 7', N'Address Line 1 - 07', N'Address Line 2 - 07', N'Address Line 3 - 07')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (12, N'AddrPC08       ', 13, N'Ward 8', N'Borough 8', N'Local Au 8', N'Unitary Au 8', N'NHS 8', N'Address Line 1 - 08', N'Address Line 2 - 08', N'Address Line 3 - 08')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (13, N'AddrPC09       ', 13, N'Ward 9', N'Borough 9', N'Local Au 9', N'Unitary Au 9', N'NHS 9', N'Address Line 1 - 09', N'Address Line 2 - 09', N'Address Line 3 - 09')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (16, N'AddrPC10       ', 15, N'Ward 10', N'Borough 10', N'Local Au 10', N'Unitary Au 10', N'NHS 10', N'Address Line 1 - 10', N'Address Line 2 - 10', N'Address Line 3 - 10')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (17, N'AddrPC11       ', 16, N'Ward 11', N'Borough 11', N'Local Au 11', N'Unitary Au 11', N'NHS 11', N'Address Line 1 - 11', N'Address Line 2 - 11', N'Address Line 3 - 11')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (18, N'AddrPC12       ', 16, N'Ward 12', N'Borough 12', N'Local Au 12', N'Unitary Au 12', N'NHS 12', N'Address Line 1 - 12', N'Address Line 2 - 12', N'Address Line 3 - 12')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (19, N'AddrPC13       ', 18, N'Ward 13', N'Borough 13', N'Local Au 13', N'Unitary Au 13', N'NHS 13', N'Address Line 1 - 13', N'Address Line 2 - 13', N'Address Line 3 - 13')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (21, N'AddrPC14       ', 20, N'Ward 14', N'Borough 14', N'Local Au 14', N'Unitary Au 14', N'NHS 14', N'Address Line 1 - 14', N'Address Line 2 - 14', N'Address Line 3 - 14')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (22, N'AddrPC15       ', 19, N'Ward 15', N'Borough 15', N'Local Au 15', N'Unitary Au 15', N'NHS 15', N'Address Line 1 - 15', N'Address Line 2 - 15', N'Address Line 3 - 15')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (23, N'AddrPC16       ', 21, N'Ward 16', N'Borough 16', N'Local Au 16', N'Unitary Au 16', N'NHS 16', N'Address Line 1 - 16', N'Address Line 2 - 16', N'Address Line 3 - 16')
INSERT [dbo].[Address] ([AddressID], [PostCode], [TownID], [Ward], [Borough], [LocalAuthority], [UnitaryAuthority], [NHSAuthority], [AddressLine1], [AddressLine2], [AddressLine3]) VALUES (24, N'AddrPC17       ', 21, N'Ward 17', N'Borough 17', N'Local Au 17', N'Unitary Au 17', N'NHS 17', N'Address Line 1 - 17', N'Address Line 2 - 17', N'Address Line 3 - 17')
SET IDENTITY_INSERT [dbo].[Address] OFF
/****** Object:  Table [dbo].[Organisation]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organisation](
	[OrgID] [int] IDENTITY(1,1) NOT NULL,
	[OrgName] [nvarchar](150) NOT NULL,
	[ContactID] [int] NOT NULL,
	[OrgShortDescription] [nvarchar](150) NOT NULL,
	[AddressID] [int] NOT NULL,
	[RefID] [int] NOT NULL,
	[SIC] [numeric](18, 0) NULL,
	[OrgFullDescription] [nvarchar](max) NULL,
	[Phone] [numeric](18, 0) NOT NULL,
	[Fax] [char](15) NULL,
	[Email] [nvarchar](50) NULL,
	[WebAddress] [nvarchar](50) NULL,
	[CharityNumber] [nvarchar](50) NULL,
	[CompanyNumber] [char](15) NULL,
	[GovOfficeRegionID] [int] NULL,
	[TrustRegionID] [int] NULL,
	[TrustDistrictID] [int] NULL,
	[StatusActive] [bit] NOT NULL,
	[StatusPreferred] [bit] NULL,
	[StatusExpression] [bit] NULL,
 CONSTRAINT [PK_Organisation] PRIMARY KEY CLUSTERED 
(
	[OrgID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Organisation] ON
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (3, N'Org Name 1', 3, N'Organisation Des. 1', 12, 2, NULL, NULL, CAST(245234 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (6, N'Org Name 2', 6, N'Org. Des. 35788', 6, 1, NULL, NULL, CAST(342323 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (8, N'Org Name 3', 7, N'Des safa4535', 9, 4, NULL, NULL, CAST(867869 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (9, N'Org Name 4', 3, N'sdfsdf534543 wefwe', 6, 3, NULL, NULL, CAST(23424 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (10, N'Org Name 4555', 9, N'Des. 44', 10, 7, NULL, NULL, CAST(9875743 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (12, N'Org Name 2346', 8, N'XYZ ', 8, 14, NULL, NULL, CAST(31241343 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (16, N'Org Name 7', 15, N'tytryrty', 17, 24, NULL, NULL, CAST(3242342 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (17, N'Org Name 8', 20, N'SAFSAFAF', 6, 22, NULL, NULL, CAST(213123 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (18, N'Org Namr 9', 11, N'GRTYR 6666', 21, 13, NULL, NULL, CAST(2131231 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (20, N'oRGANISATION 10', 8, N'drtyTRETETE', 24, 16, NULL, NULL, CAST(536546 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (21, N'ORGANISATION 11', 9, N'ertwertrt Des.', 16, 21, NULL, NULL, CAST(1234789 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (22, N'Orga. 12', 6, N'sadasd &*&*&', 23, 23, NULL, NULL, CAST(34324234 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (24, N'Orga. 13', 7, N'sad*&*(&( JIDSD', 23, 22, NULL, NULL, CAST(43244244 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (26, N'Organisation 15', 19, N'Queen', 21, 7, NULL, NULL, CAST(12235435 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (27, N'Organisation 16', 19, N'King', 19, 19, NULL, NULL, CAST(19191919 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (30, N'Org 17', 6, N'Haizzzzzz', 16, 18, NULL, NULL, CAST(21212121 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (31, N'ORG Name 14', 9, N'adewrwerwe&&', 17, 19, NULL, NULL, CAST(213123213 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (32, N'Organisation 18', 10, N'Absolute', 24, 5, NULL, NULL, CAST(345345344 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (35, N'Organisa. 20', 20, N'2020202020', 21, 20, NULL, NULL, CAST(202020202 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (36, N'org xxx', 3, N'88888.com', 12, 21, NULL, NULL, CAST(12211221 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Organisation] ([OrgID], [OrgName], [ContactID], [OrgShortDescription], [AddressID], [RefID], [SIC], [OrgFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [GovOfficeRegionID], [TrustRegionID], [TrustDistrictID], [StatusActive], [StatusPreferred], [StatusExpression]) VALUES (37, N'Orgadasdd', 6, N'123.com.vn', 21, 5, NULL, NULL, CAST(123213213 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Organisation] OFF
/****** Object:  Table [dbo].[SupportingMaterial]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportingMaterial](
	[OrgID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Url] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SupportingMaterial_1] PRIMARY KEY CLUSTERED 
(
	[OrgID] ASC,
	[Url] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organistation_Service]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organistation_Service](
	[Org_Service_Id] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
 CONSTRAINT [PK_Organistation_Service] PRIMARY KEY CLUSTERED 
(
	[Org_Service_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organistation_Programme]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organistation_Programme](
	[Org_Pro_Id] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NULL,
	[ProgrammeID] [int] NULL,
 CONSTRAINT [PK_Organistation_Programme] PRIMARY KEY CLUSTERED 
(
	[Org_Pro_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemCheck]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCheck](
	[ItemCheckID] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NOT NULL,
	[Group1] [nvarchar](50) NULL,
	[Group2] [nvarchar](50) NULL,
	[Group3] [nvarchar](50) NULL,
	[Group4] [nvarchar](50) NULL,
	[Group5] [nvarchar](50) NULL,
	[Group6] [nvarchar](50) NULL,
	[Group7] [nvarchar](50) NULL,
 CONSTRAINT [PK_ItemCheck] PRIMARY KEY CLUSTERED 
(
	[ItemCheckID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ItemCheck] ON
INSERT [dbo].[ItemCheck] ([ItemCheckID], [OrgID], [Group1], [Group2], [Group3], [Group4], [Group5], [Group6], [Group7]) VALUES (1, 3, N'1,4,5,6', N'2,3,4', N'4', N'6,9', N'9', N'7', NULL)
INSERT [dbo].[ItemCheck] ([ItemCheckID], [OrgID], [Group1], [Group2], [Group3], [Group4], [Group5], [Group6], [Group7]) VALUES (2, 6, N'2,3,4,6', NULL, NULL, N'4,5,6', NULL, N'9', NULL)
INSERT [dbo].[ItemCheck] ([ItemCheckID], [OrgID], [Group1], [Group2], [Group3], [Group4], [Group5], [Group6], [Group7]) VALUES (3, 20, N'1', NULL, NULL, NULL, NULL, N'6', NULL)
INSERT [dbo].[ItemCheck] ([ItemCheckID], [OrgID], [Group1], [Group2], [Group3], [Group4], [Group5], [Group6], [Group7]) VALUES (4, 21, N'4', N'5', NULL, N'4', NULL, N'2', NULL)
INSERT [dbo].[ItemCheck] ([ItemCheckID], [OrgID], [Group1], [Group2], [Group3], [Group4], [Group5], [Group6], [Group7]) VALUES (5, 30, N'5', N'3', NULL, NULL, NULL, N'1', NULL)
INSERT [dbo].[ItemCheck] ([ItemCheckID], [OrgID], [Group1], [Group2], [Group3], [Group4], [Group5], [Group6], [Group7]) VALUES (6, 31, N'2', N'2', NULL, NULL, NULL, N'3', NULL)
SET IDENTITY_INSERT [dbo].[ItemCheck] OFF
/****** Object:  Table [dbo].[Directorate]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Directorate](
	[DirectorateID] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
	[DirectorateName] [nvarchar](50) NOT NULL,
	[DirectorateShortDescription] [nvarchar](50) NULL,
	[DirectorateFullDescription] [nvarchar](max) NULL,
	[Phone] [char](15) NULL,
	[Fax] [char](15) NULL,
	[Email] [nvarchar](50) NULL,
	[WebAddress] [nvarchar](50) NULL,
	[CharityNumber] [nvarchar](50) NULL,
	[CompanyNumber] [char](15) NULL,
	[AddressID] [int] NOT NULL,
	[StatusActive] [bit] NOT NULL,
 CONSTRAINT [PK_Directorate] PRIMARY KEY CLUSTERED 
(
	[DirectorateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Directorate] ON
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (4, 3, 6, N'Directorate 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (5, 6, 10, N'Directorate 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (6, 18, 11, N'Directorate 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (10, 10, 14, N'Directorate 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (12, 20, 16, N'Directorate 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (13, 20, 8, N'Directorate 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (14, 8, 19, N'Directorate 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (15, 9, 22, N'Directorate 8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (16, 9, 23, N'Directorate 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (17, 9, 21, N'Directorate 10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (19, 9, 6, N'Directorate 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (20, 30, 2, N'Directorate 12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (21, 37, 3, N'Directorate 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (22, 35, 4, N'Directorate 14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (23, 3, 10, N'Directorate 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (24, 3, 14, N'Directorate 167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1)
INSERT [dbo].[Directorate] ([DirectorateID], [OrgID], [ContactID], [DirectorateName], [DirectorateShortDescription], [DirectorateFullDescription], [Phone], [Fax], [Email], [WebAddress], [CharityNumber], [CompanyNumber], [AddressID], [StatusActive]) VALUES (25, 18, 8, N'Directorate 77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1)
SET IDENTITY_INSERT [dbo].[Directorate] OFF
/****** Object:  Table [dbo].[Department]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DirectorateID] [int] NOT NULL,
	[ContactID] [int] NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[DepartmentShortDescription] [nvarchar](50) NOT NULL,
	[AddressID] [int] NULL,
	[DepartmentFullDescription] [nvarchar](max) NULL,
	[Phone] [char](15) NULL,
	[Fax] [char](15) NULL,
	[Email] [nvarchar](50) NULL,
	[WebAddress] [nvarchar](50) NULL,
	[StatusActive] [bit] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (1, 4, NULL, N'Department 1', N'Des. 1', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (3, 5, NULL, N'Department 2', N'Des. 2', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (4, 6, NULL, N'Department 3', N'Des. 3', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (6, 10, NULL, N'Department 4', N'Des. 4', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (8, 12, NULL, N'Department 5', N'Des. 5', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (9, 13, NULL, N'Department 6', N'Des. 6', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (10, 14, NULL, N'Department 7', N'Des. 7', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (11, 4, NULL, N'Department 8', N'Des. 8', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (12, 5, NULL, N'Department 9', N'Des. 9', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (13, 6, NULL, N'Department 10', N'Des. 10', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (14, 10, NULL, N'Department 11', N'Des. 11', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (15, 4, NULL, N'Department 12', N'Des. 12', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (16, 5, NULL, N'Department 13', N'Des. 13', NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (17, 4, NULL, N'Department 14', N'Des. 14', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (18, 22, NULL, N'Department 15', N'Des .15 ', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (19, 23, NULL, N'Department 16', N'Des. 16', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (21, 21, NULL, N'Department 17', N'Des. 17', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (22, 24, NULL, N'Department 18', N'Des. 18', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (23, 22, NULL, N'Department 19', N'Des. 19', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Department] ([DepartmentID], [DirectorateID], [ContactID], [DepartmentName], [DepartmentShortDescription], [AddressID], [DepartmentFullDescription], [Phone], [Fax], [Email], [WebAddress], [StatusActive]) VALUES (24, 23, NULL, N'Department 20', N'Des. 20', NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[Team]    Script Date: 03/28/2012 14:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Team](
	[TeamID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
	[TeamName] [nvarchar](50) NOT NULL,
	[OrgID] [int] NULL,
	[AddressID] [int] NULL,
	[StatusActive] [bit] NOT NULL,
	[TeamShortDescription] [nvarchar](50) NULL,
	[TeamFullDescription] [nvarchar](max) NULL,
	[Phone] [char](15) NULL,
	[Fax] [char](15) NULL,
	[Email] [nvarchar](50) NULL,
	[WebAddress] [nvarchar](50) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Department_StatusActive]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_StatusActive]  DEFAULT ((1)) FOR [StatusActive]
GO
/****** Object:  Default [DF_Directorate_StatusActive]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Directorate] ADD  CONSTRAINT [DF_Directorate_StatusActive]  DEFAULT ((1)) FOR [StatusActive]
GO
/****** Object:  Default [DF_Organisation_StatusActive]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Organisation] ADD  CONSTRAINT [DF_Organisation_StatusActive]  DEFAULT ((1)) FOR [StatusActive]
GO
/****** Object:  Default [DF_Team_StatusActive]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Team] ADD  CONSTRAINT [DF_Team_StatusActive]  DEFAULT ((1)) FOR [StatusActive]
GO
/****** Object:  ForeignKey [FK_Address_Town]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Town] FOREIGN KEY([TownID])
REFERENCES [dbo].[Town] ([TownID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Town]
GO
/****** Object:  ForeignKey [FK_County_Country]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[County]  WITH CHECK ADD  CONSTRAINT [FK_County_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[County] CHECK CONSTRAINT [FK_County_Country]
GO
/****** Object:  ForeignKey [FK_Department_Contact1]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Contact1] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Contact1]
GO
/****** Object:  ForeignKey [FK_Department_Directorate]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Directorate] FOREIGN KEY([DirectorateID])
REFERENCES [dbo].[Directorate] ([DirectorateID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Directorate]
GO
/****** Object:  ForeignKey [FK_Directorate_Contact]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Directorate]  WITH CHECK ADD  CONSTRAINT [FK_Directorate_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Directorate] CHECK CONSTRAINT [FK_Directorate_Contact]
GO
/****** Object:  ForeignKey [FK_Directorate_Organisation]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Directorate]  WITH CHECK ADD  CONSTRAINT [FK_Directorate_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[Directorate] CHECK CONSTRAINT [FK_Directorate_Organisation]
GO
/****** Object:  ForeignKey [FK_Gov_County_County]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Gov_County]  WITH CHECK ADD  CONSTRAINT [FK_Gov_County_County] FOREIGN KEY([CountyID])
REFERENCES [dbo].[County] ([CountyID])
GO
ALTER TABLE [dbo].[Gov_County] CHECK CONSTRAINT [FK_Gov_County_County]
GO
/****** Object:  ForeignKey [FK_Gov_County_GovOfficeRegion]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Gov_County]  WITH CHECK ADD  CONSTRAINT [FK_Gov_County_GovOfficeRegion] FOREIGN KEY([GovOfficeRegionID])
REFERENCES [dbo].[GovOfficeRegion] ([GovOfficeRegionID])
GO
ALTER TABLE [dbo].[Gov_County] CHECK CONSTRAINT [FK_Gov_County_GovOfficeRegion]
GO
/****** Object:  ForeignKey [FK_ItemCheck_Organisation]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[ItemCheck]  WITH CHECK ADD  CONSTRAINT [FK_ItemCheck_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[ItemCheck] CHECK CONSTRAINT [FK_ItemCheck_Organisation]
GO
/****** Object:  ForeignKey [FK_Organisation_Address]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_Address]
GO
/****** Object:  ForeignKey [FK_Organisation_Contact]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_Contact]
GO
/****** Object:  ForeignKey [FK_Organisation_GovOfficeRegion]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_GovOfficeRegion] FOREIGN KEY([GovOfficeRegionID])
REFERENCES [dbo].[GovOfficeRegion] ([GovOfficeRegionID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_GovOfficeRegion]
GO
/****** Object:  ForeignKey [FK_Organisation_ReferenceData]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_ReferenceData] FOREIGN KEY([RefID])
REFERENCES [dbo].[ReferenceData] ([RefID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_ReferenceData]
GO
/****** Object:  ForeignKey [FK_Organisation_TrustDistrict]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_TrustDistrict] FOREIGN KEY([TrustDistrictID])
REFERENCES [dbo].[TrustDistrict] ([TrustDistrictID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_TrustDistrict]
GO
/****** Object:  ForeignKey [FK_Organisation_TrustRegion]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_TrustRegion] FOREIGN KEY([TrustRegionID])
REFERENCES [dbo].[TrustRegion] ([TrustRegionID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_TrustRegion]
GO
/****** Object:  ForeignKey [FK_Organistation_Programme_Organisation]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Organistation_Programme]  WITH CHECK ADD  CONSTRAINT [FK_Organistation_Programme_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[Organistation_Programme] CHECK CONSTRAINT [FK_Organistation_Programme_Organisation]
GO
/****** Object:  ForeignKey [FK_Organistation_Programme_Programme]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Organistation_Programme]  WITH CHECK ADD  CONSTRAINT [FK_Organistation_Programme_Programme] FOREIGN KEY([ProgrammeID])
REFERENCES [dbo].[Programme] ([ProgrammeID])
GO
ALTER TABLE [dbo].[Organistation_Programme] CHECK CONSTRAINT [FK_Organistation_Programme_Programme]
GO
/****** Object:  ForeignKey [FK_Organistation_Service_Organisation]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Organistation_Service]  WITH CHECK ADD  CONSTRAINT [FK_Organistation_Service_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[Organistation_Service] CHECK CONSTRAINT [FK_Organistation_Service_Organisation]
GO
/****** Object:  ForeignKey [FK_Organistation_Service_Service]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Organistation_Service]  WITH CHECK ADD  CONSTRAINT [FK_Organistation_Service_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Organistation_Service] CHECK CONSTRAINT [FK_Organistation_Service_Service]
GO
/****** Object:  ForeignKey [FK_Premise_Service_Premise]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Premise_Service]  WITH CHECK ADD  CONSTRAINT [FK_Premise_Service_Premise] FOREIGN KEY([PremiseID])
REFERENCES [dbo].[Premise] ([PremiseID])
GO
ALTER TABLE [dbo].[Premise_Service] CHECK CONSTRAINT [FK_Premise_Service_Premise]
GO
/****** Object:  ForeignKey [FK_Premise_Service_Service]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Premise_Service]  WITH CHECK ADD  CONSTRAINT [FK_Premise_Service_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Premise_Service] CHECK CONSTRAINT [FK_Premise_Service_Service]
GO
/****** Object:  ForeignKey [FK_Service_Contact]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Contact]
GO
/****** Object:  ForeignKey [FK_SupportingMaterial_Organisation]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[SupportingMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SupportingMaterial_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[SupportingMaterial] CHECK CONSTRAINT [FK_SupportingMaterial_Organisation]
GO
/****** Object:  ForeignKey [FK_SupportingMaterial_User]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[SupportingMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SupportingMaterial_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[SupportingMaterial] CHECK CONSTRAINT [FK_SupportingMaterial_User]
GO
/****** Object:  ForeignKey [FK_Team_Contact]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Contact]
GO
/****** Object:  ForeignKey [FK_Team_Department]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Department]
GO
/****** Object:  ForeignKey [FK_Town_County1]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[Town]  WITH CHECK ADD  CONSTRAINT [FK_Town_County1] FOREIGN KEY([CountyID])
REFERENCES [dbo].[County] ([CountyID])
GO
ALTER TABLE [dbo].[Town] CHECK CONSTRAINT [FK_Town_County1]
GO
/****** Object:  ForeignKey [FK_TrustDistrict_TrustRegion]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[TrustDistrict]  WITH CHECK ADD  CONSTRAINT [FK_TrustDistrict_TrustRegion] FOREIGN KEY([TrustRegionID])
REFERENCES [dbo].[TrustRegion] ([TrustRegionID])
GO
ALTER TABLE [dbo].[TrustDistrict] CHECK CONSTRAINT [FK_TrustDistrict_TrustRegion]
GO
/****** Object:  ForeignKey [FK_TrustRegion_Country1]    Script Date: 03/28/2012 14:30:52 ******/
ALTER TABLE [dbo].[TrustRegion]  WITH CHECK ADD  CONSTRAINT [FK_TrustRegion_Country1] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[TrustRegion] CHECK CONSTRAINT [FK_TrustRegion_Country1]
GO
