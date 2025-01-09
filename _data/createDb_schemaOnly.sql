/****** Object:  Table [dbo].[Column]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Column](
	[Sn] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](10) NOT NULL,
	[TableId] [varchar](10) NOT NULL,
	[Code] [varchar](100) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[DataType] [varchar](20) NOT NULL,
	[Nullable] [bit] NOT NULL,
	[DefaultValue] [varchar](100) NULL,
	[Sort] [int] NOT NULL,
	[Note] [nvarchar](255) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Column] PRIMARY KEY CLUSTERED 
(
	[Sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Crud]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Crud](
	[Id] [varchar](10) NOT NULL,
	[ProjectId] [varchar](10) NOT NULL,
	[ProgCode] [varchar](30) NOT NULL,
	[ProgName] [nvarchar](30) NOT NULL,
	[LabelHori] [bit] NOT NULL,
	[ReadSql] [varchar](500) NOT NULL,
	[TableAs] [varchar](10) NULL,
	[HasCreate] [bit] NOT NULL,
	[HasUpdate] [bit] NOT NULL,
	[HasDelete] [bit] NOT NULL,
	[HasView] [bit] NOT NULL,
	[HasExport] [bit] NOT NULL,
	[HasReset] [bit] NOT NULL,
	[AuthType] [tinyint] NOT NULL,
	[Status] [bit] NOT NULL,
	[Created] [datetime] NOT NULL,
	[Revised] [datetime] NULL,
 CONSTRAINT [PK_Crud_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CrudEitem]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrudEitem](
	[Sn] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](10) NOT NULL,
	[EtableId] [varchar](10) NOT NULL,
	[ColumnId] [varchar](10) NOT NULL,
	[EitemType] [varchar](10) NOT NULL,
	[ItemData] [nvarchar](50) NULL,
	[Required] [bit] NOT NULL,
	[HasCreate] [bit] NOT NULL,
	[HasUpdate] [bit] NOT NULL,
	[PlaceHolder] [varchar](10) NULL,
	[DefaultValue] [varchar](10) NULL,
	[PosGroup] [varchar](10) NULL,
	[LayoutCols] [varchar](10) NULL,
	[Width] [int] NOT NULL,
	[CheckType] [varchar](10) NOT NULL,
	[CheckData] [varchar](10) NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_CrudEitem] PRIMARY KEY CLUSTERED 
(
	[Sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CrudEtable]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrudEtable](
	[Id] [varchar](10) NOT NULL,
	[CrudId] [varchar](10) NOT NULL,
	[TableId] [varchar](10) NOT NULL,
	[PkeyFid] [varchar](10) NOT NULL,
	[FkeyFid] [varchar](10) NULL,
	[Col4] [varchar](30) NOT NULL,
	[OrderBy] [varchar](10) NOT NULL,
	[Sort] [int] NOT NULL,
	[HalfWidth] [bit] NOT NULL,
	[AutoIdLen] [varchar](20) NULL,
 CONSTRAINT [PK_CrudEtable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CrudQitem]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrudQitem](
	[Sn] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](10) NOT NULL,
	[CrudId] [varchar](10) NOT NULL,
	[ColumnId] [varchar](10) NOT NULL,
	[TableAs] [varchar](20) NOT NULL,
	[QitemType] [varchar](20) NOT NULL,
	[ItemData] [varchar](20) NULL,
	[Op] [varchar](10) NOT NULL,
	[IsRange] [bit] NOT NULL,
	[IsFind2] [bit] NOT NULL,
	[PosGroup] [varchar](10) NULL,
	[LayoutCols] [varchar](20) NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_CrudQitem] PRIMARY KEY CLUSTERED 
(
	[Sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CrudRitem]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrudRitem](
	[Sn] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](10) NOT NULL,
	[CrudId] [varchar](10) NOT NULL,
	[ColumnCode] [varchar](100) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Width] [int] NOT NULL,
	[RitemType] [varchar](10) NOT NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_CrudRitem] PRIMARY KEY CLUSTERED 
(
	[Sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Issue]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issue](
	[Sn] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](10) NOT NULL,
	[ProjectId] [varchar](10) NOT NULL,
	[ProgId] [varchar](10) NOT NULL,
	[OwnerId] [varchar](10) NULL,
	[IssueType] [varchar](5) NOT NULL,
	[WorkDate] [smalldatetime] NULL,
	[WorkHours] [smallint] NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Note] [nvarchar](1000) NULL,
	[IsFinish] [bit] NOT NULL,
	[RptDeptCode] [varchar](10) NULL,
	[RptDeptId] [varchar](10) NULL,
	[RptUser] [nvarchar](20) NULL,
	[RptType] [nvarchar](30) NULL,
	[Creator] [varchar](10) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Reviser] [varchar](10) NULL,
	[Revised] [datetime] NULL,
 CONSTRAINT [PK_Issue] PRIMARY KEY CLUSTERED 
(
	[Sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueFile]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueFile](
	[Sn] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](10) NOT NULL,
	[IssueId] [varchar](10) NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[Creator] [varchar](10) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_IssueFile] PRIMARY KEY CLUSTERED 
(
	[Sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueRelat]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueRelat](
	[Sn] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](10) NOT NULL,
	[IssueId] [varchar](10) NOT NULL,
	[SourceIssue] [varchar](10) NOT NULL,
	[Creator] [varchar](10) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_IssueRelat] PRIMARY KEY CLUSTERED 
(
	[Sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueWatch]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueWatch](
	[Sn] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](10) NOT NULL,
	[IssueId] [varchar](10) NOT NULL,
	[WatcherId] [varchar](10) NOT NULL,
 CONSTRAINT [PK_IssueWatch] PRIMARY KEY CLUSTERED 
(
	[Sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrjProg]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrjProg](
	[Id] [varchar](10) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[ProjectId] [varchar](10) NOT NULL,
	[Sort] [smallint] NOT NULL,
	[Status] [bit] NOT NULL,
	[Creator] [varchar](10) NOT NULL,
 CONSTRAINT [PK_PrjProg] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [varchar](10) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Code] [nvarchar](30) NOT NULL,
	[DbName] [varchar](20) NOT NULL,
	[DbType] [tinyint] NOT NULL,
	[ProjectPath] [varchar](255) NOT NULL,
	[ConnectStr] [varchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[FromTmpTable] [bit] NOT NULL,
	[Creator] [varchar](10) NULL,
	[Created] [datetime] NULL,
	[Reviser] [varchar](10) NULL,
	[Revised] [datetime] NULL,
 CONSTRAINT [PK_Project_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[Sn] [int] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](10) NOT NULL,
	[ProjectId] [varchar](10) NOT NULL,
	[Code] [varchar](100) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Note] [nvarchar](255) NULL,
	[TranLog] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[Sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpColumn]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpColumn](
	[Code] [varchar](100) NOT NULL,
	[TableCode] [varchar](100) NULL,
	[DataType] [varchar](20) NOT NULL,
	[Nullable] [bit] NOT NULL,
	[DefaultValue] [varchar](100) NULL,
	[Sort] [smallint] NOT NULL,
	[Note] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpColumnImport]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpColumnImport](
	[DbName] [varchar](50) NULL,
	[TableCode] [varchar](50) NULL,
	[ColumnCode] [varchar](50) NULL,
	[ColumnName] [nvarchar](500) NULL,
	[DefaultValue] [varchar](50) NULL,
	[Note] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmpTable]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpTable](
	[Code] [varchar](100) NOT NULL,
	[Note] [nvarchar](255) NULL,
 CONSTRAINT [PK__tmpTable__A25C5AA6183AE814] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XpCode]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XpCode](
	[Type] [varchar](20) NOT NULL,
	[Value] [varchar](10) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Sort] [int] NOT NULL,
	[Ext] [varchar](30) NULL,
	[Note] [nvarchar](255) NULL,
 CONSTRAINT [PK_XpCode] PRIMARY KEY CLUSTERED 
(
	[Type] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XpDept]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XpDept](
	[Id] [varchar](10) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[MgrId] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Dept] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XpProg]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XpProg](
	[Id] [varchar](10) NOT NULL,
	[Code] [varchar](30) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Icon] [varchar](20) NULL,
	[Url] [varchar](100) NULL,
	[Sort] [smallint] NOT NULL,
	[AuthRow] [tinyint] NOT NULL,
	[FunCreate] [tinyint] NOT NULL,
	[FunRead] [tinyint] NOT NULL,
	[FunUpdate] [tinyint] NOT NULL,
	[FunDelete] [tinyint] NOT NULL,
	[FunPrint] [tinyint] NOT NULL,
	[FunExport] [tinyint] NOT NULL,
	[FunView] [tinyint] NOT NULL,
	[FunOther] [tinyint] NOT NULL,
 CONSTRAINT [PK_XpProg] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XpRole]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XpRole](
	[Id] [varchar](10) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_XpRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XpRoleProg]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XpRoleProg](
	[Id] [varchar](10) NOT NULL,
	[RoleId] [varchar](10) NOT NULL,
	[ProgId] [varchar](10) NOT NULL,
	[FunCreate] [tinyint] NOT NULL,
	[FunRead] [tinyint] NOT NULL,
	[FunUpdate] [tinyint] NOT NULL,
	[FunDelete] [tinyint] NOT NULL,
	[FunPrint] [tinyint] NOT NULL,
	[FunExport] [tinyint] NOT NULL,
	[FunView] [tinyint] NOT NULL,
	[FunOther] [tinyint] NOT NULL,
 CONSTRAINT [PK_XpRoleProg] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XpUser]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XpUser](
	[Id] [varchar](10) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Account] [varchar](20) NOT NULL,
	[Pwd] [varchar](32) NOT NULL,
	[DeptId] [varchar](10) NOT NULL,
	[PhotoFile] [nvarchar](100) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XpUserRole]    Script Date: 2025/1/8 下午 05:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XpUserRole](
	[Id] [varchar](10) NOT NULL,
	[UserId] [varchar](10) NOT NULL,
	[RoleId] [varchar](10) NOT NULL,
 CONSTRAINT [PK_XpUserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Column_Id]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Column_Id] ON [dbo].[Column]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Crud_Id]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Crud_Id] ON [dbo].[Crud]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CrudEitem_Id]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [CrudEitem_Id] ON [dbo].[CrudEitem]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CrudQitem_Id]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [CrudQitem_Id] ON [dbo].[CrudQitem]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CrudRitem_Id]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [CrudRitem_Id] ON [dbo].[CrudRitem]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Issue_Id]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Issue_Id] ON [dbo].[Issue]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IssueFile_Id]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IssueFile_Id] ON [dbo].[IssueFile]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IssueWatch_Id]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IssueWatch_Id] ON [dbo].[IssueWatch]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PrjProg_ProjectId]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE NONCLUSTERED INDEX [PrjProg_ProjectId] ON [dbo].[PrjProg]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Project_Id]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Project_Id] ON [dbo].[Project]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Table_Id]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Table_Id] ON [dbo].[Table]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ix_tmpColumn]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE NONCLUSTERED INDEX [ix_tmpColumn] ON [dbo].[tmpColumn]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [XpProg_Code]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [XpProg_Code] ON [dbo].[XpProg]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [XpRoleProg_RoleIdProgId]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [XpRoleProg_RoleIdProgId] ON [dbo].[XpRoleProg]
(
	[RoleId] ASC,
	[ProgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [XpUserRole_UserIdRoleId]    Script Date: 2025/1/8 下午 05:56:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [XpUserRole_UserIdRoleId] ON [dbo].[XpUserRole]
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF_Project_DbType]  DEFAULT ((0)) FOR [DbType]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF_Project_FromTmpTable]  DEFAULT ((0)) FOR [FromTmpTable]
GO
ALTER TABLE [dbo].[Table] ADD  CONSTRAINT [DF_Table_TranLog]  DEFAULT ((0)) FOR [TranLog]
GO
ALTER TABLE [dbo].[XpProg] ADD  CONSTRAINT [DF_XpProg_Sort]  DEFAULT ((9)) FOR [Sort]
GO
ALTER TABLE [dbo].[XpProg] ADD  CONSTRAINT [DF_XpProg_AuthRow]  DEFAULT ((0)) FOR [AuthRow]
GO
ALTER TABLE [dbo].[XpProg] ADD  CONSTRAINT [DF_XpProg_FunCreate]  DEFAULT ((0)) FOR [FunCreate]
GO
ALTER TABLE [dbo].[XpProg] ADD  CONSTRAINT [DF_XpProg_FunRead]  DEFAULT ((0)) FOR [FunRead]
GO
ALTER TABLE [dbo].[XpProg] ADD  CONSTRAINT [DF_XpProg_FunUpdate]  DEFAULT ((0)) FOR [FunUpdate]
GO
ALTER TABLE [dbo].[XpProg] ADD  CONSTRAINT [DF_XpProg_FunDelete]  DEFAULT ((0)) FOR [FunDelete]
GO
ALTER TABLE [dbo].[XpProg] ADD  CONSTRAINT [DF_XpProg_FunPrint]  DEFAULT ((0)) FOR [FunPrint]
GO
ALTER TABLE [dbo].[XpProg] ADD  CONSTRAINT [DF_XpProg_FunExport]  DEFAULT ((0)) FOR [FunExport]
GO
ALTER TABLE [dbo].[XpProg] ADD  CONSTRAINT [DF_XpProg_FunView]  DEFAULT ((0)) FOR [FunView]
GO
ALTER TABLE [dbo].[XpProg] ADD  CONSTRAINT [DF_XpProg_FunOther]  DEFAULT ((0)) FOR [FunOther]
GO
ALTER TABLE [dbo].[XpRoleProg] ADD  CONSTRAINT [DF_XpRoleProg_FunCreate]  DEFAULT ((0)) FOR [FunCreate]
GO
ALTER TABLE [dbo].[XpRoleProg] ADD  CONSTRAINT [DF_XpRoleProg_FunRead]  DEFAULT ((0)) FOR [FunRead]
GO
ALTER TABLE [dbo].[XpRoleProg] ADD  CONSTRAINT [DF_XpRoleProg_FunUpdate]  DEFAULT ((0)) FOR [FunUpdate]
GO
ALTER TABLE [dbo].[XpRoleProg] ADD  CONSTRAINT [DF_XpRoleProg_FunDelete]  DEFAULT ((0)) FOR [FunDelete]
GO
ALTER TABLE [dbo].[XpRoleProg] ADD  CONSTRAINT [DF_XpRoleProg_FunPrint]  DEFAULT ((0)) FOR [FunPrint]
GO
ALTER TABLE [dbo].[XpRoleProg] ADD  CONSTRAINT [DF_XpRoleProg_FunExport]  DEFAULT ((0)) FOR [FunExport]
GO
ALTER TABLE [dbo].[XpRoleProg] ADD  CONSTRAINT [DF_XpRoleProg_FunView]  DEFAULT ((0)) FOR [FunView]
GO
ALTER TABLE [dbo].[XpRoleProg] ADD  CONSTRAINT [DF_XpRoleProg_FunOther]  DEFAULT ((0)) FOR [FunOther]
GO
ALTER TABLE [dbo].[CrudEitem]  WITH CHECK ADD  CONSTRAINT [FK_CrudEitem_CrudEtable] FOREIGN KEY([EtableId])
REFERENCES [dbo].[CrudEtable] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CrudEitem] CHECK CONSTRAINT [FK_CrudEitem_CrudEtable]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'權限種類, 0(無), 1(Ctrl), 2(Action)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Crud', @level2type=N'COLUMN',@level2name=N'AuthType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建檔人員' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Issue', @level2type=N'COLUMN',@level2name=N'Creator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建檔日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Issue', @level2type=N'COLUMN',@level2name=N'Created'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人員' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Issue', @level2type=N'COLUMN',@level2name=N'Reviser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Issue', @level2type=N'COLUMN',@level2name=N'Revised'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建檔人員' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'Creator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建檔日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'Created'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人員' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'Reviser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'Revised'
GO
