USE [MPT]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Workstation'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Workstation'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Plc_TO_Date'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Plc_TO_Date'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Workstation'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLC', @level2type=N'COLUMN',@level2name=N'PositionNumber'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PcEventIgnoreWords'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_SSMA_SOURCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Events_Pc'

GO
/****** Object:  StoredProcedure [dbo].[UpsertMessage]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[UpsertMessage]
GO
/****** Object:  StoredProcedure [dbo].[SetMessage]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[SetMessage]
GO
/****** Object:  StoredProcedure [dbo].[p_MakeDataCacheForCNIK]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_MakeDataCacheForCNIK]
GO
/****** Object:  StoredProcedure [dbo].[p_GetWorkStation]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_GetWorkStation]
GO
/****** Object:  StoredProcedure [dbo].[p_GetRSViewTag]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_GetRSViewTag]
GO
/****** Object:  StoredProcedure [dbo].[p_GetRSViewStation]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_GetRSViewStation]
GO
/****** Object:  StoredProcedure [dbo].[p_GetPLCSum]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_GetPLCSum]
GO
/****** Object:  StoredProcedure [dbo].[p_GetPlcEventsOld]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_GetPlcEventsOld]
GO
/****** Object:  StoredProcedure [dbo].[p_GetPlcEvents2]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_GetPlcEvents2]
GO
/****** Object:  StoredProcedure [dbo].[p_GetPlcEvents]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_GetPlcEvents]
GO
/****** Object:  StoredProcedure [dbo].[p_GetDeviceRunList]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_GetDeviceRunList]
GO
/****** Object:  StoredProcedure [dbo].[p_GetDeviceRun]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_GetDeviceRun]
GO
/****** Object:  StoredProcedure [dbo].[p_GetDataForCNIK15min]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_GetDataForCNIK15min]
GO
/****** Object:  StoredProcedure [dbo].[p_GetDataForCNIK]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_GetDataForCNIK]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_P9_FSC_Tag]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[p_Get_P9_FSC_Tag]
GO
/****** Object:  StoredProcedure [dbo].[GetPlcName]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[GetPlcName]
GO
/****** Object:  StoredProcedure [dbo].[GetPlcEventsCount]    Script Date: 30.12.2016 19:32:45 ******/
DROP PROCEDURE [dbo].[GetPlcEventsCount]
GO
ALTER TABLE [dbo].[Workstation] DROP CONSTRAINT [FK_Workstation_Project]
GO
ALTER TABLE [dbo].[Tag] DROP CONSTRAINT [FK_Tag_Subscribe]
GO
ALTER TABLE [dbo].[Tag] DROP CONSTRAINT [FK_Tag_PLC]
GO
ALTER TABLE [dbo].[RsViewProjectTags] DROP CONSTRAINT [FK_RsViewProjectTags_Project]
GO
ALTER TABLE [dbo].[RsViewProjectTags] DROP CONSTRAINT [FK_RsViewProjectAllTags_Project]
GO
ALTER TABLE [dbo].[Project] DROP CONSTRAINT [FK_Project_Factory]
GO
ALTER TABLE [dbo].[PLC_TO] DROP CONSTRAINT [FK_PLC_TO_PLC]
GO
ALTER TABLE [dbo].[PLC_Description] DROP CONSTRAINT [FK_PLC_Description_PLC]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [FK_PLC_Factory]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [FK_PLC_DataLogGate]
GO
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT [FK_Messages_PLC]
GO
ALTER TABLE [dbo].[EventsOld] DROP CONSTRAINT [FK_EventsOld_PLC]
GO
ALTER TABLE [dbo].[EventsAlarm] DROP CONSTRAINT [FK_EventsAlarm_Events]
GO
ALTER TABLE [dbo].[Events_Pc] DROP CONSTRAINT [FK_Events_Pc_Workstation]
GO
ALTER TABLE [dbo].[Events] DROP CONSTRAINT [FK_Events_PLC]
GO
ALTER TABLE [dbo].[Events] DROP CONSTRAINT [FK_Events_Codes]
GO
ALTER TABLE [dbo].[Codes] DROP CONSTRAINT [FK_Codes_Severity]
GO
ALTER TABLE [dbo].[ArchiveCache] DROP CONSTRAINT [FK_ArchiveCache_Tag]
GO
ALTER TABLE [dbo].[Archive] DROP CONSTRAINT [FK_Archive_Tag]
GO
ALTER TABLE [dbo].[AlarmValues] DROP CONSTRAINT [FK_AlarmValues_AlarmTags]
GO
ALTER TABLE [dbo].[AlarmTags] DROP CONSTRAINT [FK_AlarmTags_PLC]
GO
ALTER TABLE [dbo].[AlarmEvents] DROP CONSTRAINT [FK_AlarmEvents_AlarmTags]
GO
ALTER TABLE [dbo].[Workstation] DROP CONSTRAINT [DF__workstation__MAC__690797E6]
GO
ALTER TABLE [dbo].[Workstation] DROP CONSTRAINT [DF__workstati__Enabl__681373AD]
GO
ALTER TABLE [dbo].[Workstation] DROP CONSTRAINT [DF__workstation__IP__671F4F74]
GO
ALTER TABLE [dbo].[Workstation] DROP CONSTRAINT [DF__workstati__Passw__662B2B3B]
GO
ALTER TABLE [dbo].[Workstation] DROP CONSTRAINT [DF__workstati__Usern__65370702]
GO
ALTER TABLE [dbo].[Project] DROP CONSTRAINT [DF_Project_FactoryId]
GO
ALTER TABLE [dbo].[Project] DROP CONSTRAINT [DF__project__IDE__6442E2C9]
GO
ALTER TABLE [dbo].[Project] DROP CONSTRAINT [DF__project__Version__634EBE90]
GO
ALTER TABLE [dbo].[Project] DROP CONSTRAINT [DF__project__Path__625A9A57]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [DF_PLC_ProtocolEnabled]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [DF__PLC__href__0AD2A005]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [DF__PLC__Faults__09DE7BCC]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [DF__PLC__LastEventMs__08EA5793]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [DF__PLC__LastEventDa__07F6335A]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [DF__PLC__LastEventIn__07020F21]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [DF__PLC__ProtocolTyp__060DEAE8]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [DF__PLC__Topic__0519C6AF]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [DF__PLC__FactoryId__0425A276]
GO
ALTER TABLE [dbo].[PLC] DROP CONSTRAINT [DF__PLC__PlcTypeId__03317E3D]
GO
ALTER TABLE [dbo].[PcEventIgnoreWords] DROP CONSTRAINT [DF__pceventig__Enabl__5E8A0973]
GO
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT [DF_Messages_MessageGroup]
GO
ALTER TABLE [dbo].[EventsOld] DROP CONSTRAINT [DF__OldPLC_Ev__Messa__1CF15040]
GO
ALTER TABLE [dbo].[Events_Pc] DROP CONSTRAINT [DF_Events_Pc_Time]
GO
ALTER TABLE [dbo].[Codes] DROP CONSTRAINT [DF_Codes_ShowValue]
GO
ALTER TABLE [dbo].[Archive] DROP CONSTRAINT [DF_Archive_DateTime]
GO
/****** Object:  View [dbo].[v_Workstation]    Script Date: 30.12.2016 19:32:45 ******/
DROP VIEW [dbo].[v_Workstation]
GO
/****** Object:  View [dbo].[Plc_TO_Date]    Script Date: 30.12.2016 19:32:45 ******/
DROP VIEW [dbo].[Plc_TO_Date]
GO
/****** Object:  Table [dbo].[Workstation]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Workstation]
GO
/****** Object:  Table [dbo].[WorkScheduleMove]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[WorkScheduleMove]
GO
/****** Object:  Table [dbo].[WorkScheduleHolidays]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[WorkScheduleHolidays]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Tag]
GO
/****** Object:  Table [dbo].[Subscribe]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Subscribe]
GO
/****** Object:  Table [dbo].[Severity]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Severity]
GO
/****** Object:  Table [dbo].[RsViewProjectTags]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[RsViewProjectTags]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Project]
GO
/****** Object:  Table [dbo].[PLC_TO]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[PLC_TO]
GO
/****** Object:  Table [dbo].[PLC_Description]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[PLC_Description]
GO
/****** Object:  Table [dbo].[PLC]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[PLC]
GO
/****** Object:  Table [dbo].[PcEventIgnoreWords]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[PcEventIgnoreWords]
GO
/****** Object:  Table [dbo].[P9_FSC_Tag]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[P9_FSC_Tag]
GO
/****** Object:  Table [dbo].[OpcDataLogger]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[OpcDataLogger]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Messages]
GO
/****** Object:  Table [dbo].[Factory]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Factory]
GO
/****** Object:  Table [dbo].[EventsOld]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[EventsOld]
GO
/****** Object:  Table [dbo].[EventsAlarm]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[EventsAlarm]
GO
/****** Object:  Table [dbo].[Events_Pc]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Events_Pc]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Events]
GO
/****** Object:  Table [dbo].[DeviceRun]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[DeviceRun]
GO
/****** Object:  Table [dbo].[Codes]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Codes]
GO
/****** Object:  Table [dbo].[ArchiveCache]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[ArchiveCache]
GO
/****** Object:  Table [dbo].[Archive]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[Archive]
GO
/****** Object:  Table [dbo].[AlarmValues]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[AlarmValues]
GO
/****** Object:  Table [dbo].[AlarmTags]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[AlarmTags]
GO
/****** Object:  Table [dbo].[AlarmEvents]    Script Date: 30.12.2016 19:32:45 ******/
DROP TABLE [dbo].[AlarmEvents]
GO
/****** Object:  Schema [m2ss]    Script Date: 30.12.2016 19:32:45 ******/
DROP SCHEMA [m2ss]
GO
/****** Object:  User [webmptnet]    Script Date: 30.12.2016 19:32:45 ******/
DROP USER [webmptnet]
GO
/****** Object:  User [webmpt]    Script Date: 30.12.2016 19:32:45 ******/
DROP USER [webmpt]
GO
/****** Object:  User [user]    Script Date: 30.12.2016 19:32:45 ******/
DROP USER [user]
GO
/****** Object:  User [RemoteWorkstation]    Script Date: 30.12.2016 19:32:45 ******/
DROP USER [RemoteWorkstation]
GO
/****** Object:  User [phpEngine]    Script Date: 30.12.2016 19:32:45 ******/
DROP USER [phpEngine]
GO
/****** Object:  User [php]    Script Date: 30.12.2016 19:32:45 ******/
DROP USER [php]
GO
/****** Object:  User [mpt]    Script Date: 30.12.2016 19:32:45 ******/
DROP USER [mpt]
GO
/****** Object:  User [mpt]    Script Date: 30.12.2016 19:32:45 ******/
CREATE USER [mpt] FOR LOGIN [mpt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [php]    Script Date: 30.12.2016 19:32:45 ******/
CREATE USER [php] FOR LOGIN [php] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [phpEngine]    Script Date: 30.12.2016 19:32:45 ******/
CREATE USER [phpEngine] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RemoteWorkstation]    Script Date: 30.12.2016 19:32:45 ******/
CREATE USER [RemoteWorkstation] FOR LOGIN [RemoteWorkstation] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [user]    Script Date: 30.12.2016 19:32:45 ******/
CREATE USER [user] FOR LOGIN [user] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [webmpt]    Script Date: 30.12.2016 19:32:45 ******/
CREATE USER [webmpt] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [webmptnet]    Script Date: 30.12.2016 19:32:45 ******/
CREATE USER [webmptnet] FOR LOGIN [webmptnet] WITH DEFAULT_SCHEMA=[dbo]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'mpt'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'php'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'phpEngine'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RemoteWorkstation'
GO
sys.sp_addrolemember @rolename = N'db_datawriter', @membername = N'RemoteWorkstation'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'user'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'webmpt'
GO
sys.sp_addrolemember @rolename = N'db_ddladmin', @membername = N'webmpt'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'webmpt'
GO
sys.sp_addrolemember @rolename = N'db_datawriter', @membername = N'webmpt'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'webmptnet'
GO
sys.sp_addrolemember @rolename = N'db_ddladmin', @membername = N'webmptnet'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'webmptnet'
GO
sys.sp_addrolemember @rolename = N'db_datawriter', @membername = N'webmptnet'
GO
/****** Object:  Schema [m2ss]    Script Date: 30.12.2016 19:32:45 ******/
CREATE SCHEMA [m2ss]
GO
/****** Object:  Table [dbo].[AlarmEvents]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlarmEvents](
	[PlcId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
	[Datetime] [datetime] NOT NULL,
	[AlarmIn] [bit] NOT NULL,
 CONSTRAINT [PK_AlarmEvents] PRIMARY KEY CLUSTERED 
(
	[PlcId] ASC,
	[TagId] ASC,
	[Datetime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AlarmTags]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlarmTags](
	[PlcId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[LowAlarm] [real] NULL,
	[HighAlarm] [real] NULL,
	[Description] [nvarchar](1024) NULL,
 CONSTRAINT [PK_AlarmTags] PRIMARY KEY CLUSTERED 
(
	[PlcId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AlarmValues]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlarmValues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[PlcId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
	[TagValue] [real] NULL,
 CONSTRAINT [PK_AlarmData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Archive]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Archive](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TagId] [int] NULL,
	[Value] [float] NULL,
	[DateTime] [datetime] NULL,
	[ResultId] [nvarchar](32) NULL,
 CONSTRAINT [PK_Archive] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArchiveCache]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchiveCache](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TagId] [int] NULL,
	[Value] [float] NULL,
	[DateTime] [datetime] NULL,
	[ResultId] [nvarchar](32) NULL,
 CONSTRAINT [PK_ArchiveCache] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Codes]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Codes](
	[CodeId] [int] NOT NULL,
	[CodeDescr] [nvarchar](255) NOT NULL,
	[SeverityNumber] [smallint] NOT NULL,
	[ShowValue] [bit] NULL,
 CONSTRAINT [PK_Codes] PRIMARY KEY CLUSTERED 
(
	[CodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeviceRun]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceRun](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlcId] [int] NOT NULL,
	[MessageNum] [int] NOT NULL,
	[v_Norm] [float] NOT NULL,
	[SortOrder] [int] NULL,
	[DeviceName] [nvarchar](255) NULL,
 CONSTRAINT [PK_DeviceRun] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Events]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[PlcId] [int] NOT NULL,
	[LogPos] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[msec] [int] NOT NULL,
	[n] [int] NOT NULL,
	[s] [int] NOT NULL,
	[v] [float] NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Events_Pc]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events_Pc](
	[Id] [int] IDENTITY(4724717,1) NOT NULL,
	[Time] [datetime] NOT NULL,
	[Text] [nvarchar](255) NOT NULL,
	[Workstation_id] [int] NOT NULL,
	[Level] [int] NOT NULL,
 CONSTRAINT [PK_events_pc_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventsAlarm]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventsAlarm](
	[EventId] [int] NOT NULL,
 CONSTRAINT [PK_EventAlarm] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventsOld]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventsOld](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[PlcId] [int] NOT NULL,
	[LogPos] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Msec] [int] NOT NULL,
	[n] [int] NOT NULL,
	[v] [float] NOT NULL,
	[Message] [nvarchar](255) NULL,
 CONSTRAINT [PK_OldPLC_Events] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factory]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factory](
	[FactoryId] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NULL,
	[Descr] [nvarchar](255) NOT NULL,
	[Enable] [int] NOT NULL,
 CONSTRAINT [PK_Factory] PRIMARY KEY CLUSTERED 
(
	[FactoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Messages]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[PlcID] [int] NOT NULL,
	[MessageNum] [int] NOT NULL,
	[MessageText] [nvarchar](255) NULL,
	[MessageGroup] [smallint] NULL,
	[Severity] [int] NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[PlcID] ASC,
	[MessageNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OpcDataLogger]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpcDataLogger](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](128) NULL,
	[ConnectionString] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Node] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[P9_FSC_Tag]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P9_FSC_Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](4) NULL,
	[TagNumber] [nvarchar](24) NULL,
	[Service] [nvarchar](24) NULL,
	[Qualificat] [nvarchar](24) NULL,
	[Loc] [nvarchar](4) NULL,
	[Sheet] [int] NULL,
	[Rack] [int] NULL,
	[Pos] [int] NULL,
	[Chan] [int] NULL,
	[DCS_Addr] [int] NULL,
 CONSTRAINT [PK_P9_FCS_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PcEventIgnoreWords]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PcEventIgnoreWords](
	[Word] [nvarchar](255) NOT NULL,
	[Enable] [tinyint] NOT NULL,
	[Level] [bigint] NOT NULL,
 CONSTRAINT [PK_pceventignorewords_Word] PRIMARY KEY CLUSTERED 
(
	[Word] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PLC]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLC](
	[PlcId] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Descr] [nvarchar](255) NULL,
	[FullDescription] [nvarchar](1024) NULL,
	[PlcTypeId] [int] NULL,
	[FactoryId] [int] NOT NULL,
	[Topic] [nvarchar](255) NULL,
	[ProtocolType] [int] NULL,
	[LastEventIndex] [int] NULL,
	[LastEventDateTime] [datetime] NULL,
	[LastEventMsec] [int] NULL,
	[Faults] [int] NULL,
	[href] [nvarchar](255) NULL,
	[OpcDataLoggerId] [int] NULL,
	[PositionNumber] [int] NOT NULL,
	[Disassembled] [bit] NULL,
	[OrderIndex] [int] NULL,
	[ProtocolEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_PLC] PRIMARY KEY CLUSTERED 
(
	[PlcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PLC_Description]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLC_Description](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NameFull] [nvarchar](max) NULL,
	[Position] [nvarchar](32) NULL,
	[Adress] [nvarchar](32) NULL,
	[SerialNumber] [nvarchar](128) NULL,
	[Inn] [nvarchar](32) NULL,
	[DateBegin] [datetime] NULL,
 CONSTRAINT [PK_PLC_Description] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PLC_TO]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLC_TO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlcId] [int] NOT NULL,
	[DATE] [datetime] NOT NULL,
 CONSTRAINT [PK_PLC_TO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] IDENTITY(39,1) NOT NULL,
	[ProjectName] [nvarchar](255) NOT NULL,
	[Path] [nvarchar](255) NULL,
	[Version] [nvarchar](45) NULL,
	[IDE] [nvarchar](45) NULL,
	[Descr] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[EditDate] [datetime] NULL,
	[FactoryId] [int] NOT NULL,
	[OrderIndex] [int] NULL,
 CONSTRAINT [PK_project_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RsViewProjectTags]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RsViewProjectTags](
	[ProjectId] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](128) NULL,
	[Type] [smallint] NULL,
	[DataSrcType] [smallint] NULL,
	[ParentId] [int] NULL,
	[DevNodeName] [nvarchar](40) NULL,
	[DevAddress] [nvarchar](259) NULL,
	[AnaMinValue] [float] NULL,
	[AnaMaxValue] [float] NULL,
	[AnaInitValue] [float] NULL,
	[AnaScale] [float] NULL,
	[AnaOffset] [float] NULL,
	[AnaUnits] [nvarchar](20) NULL,
 CONSTRAINT [PK_RsViewProjectAllTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Severity]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Severity](
	[Number] [smallint] NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_Severity] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subscribe]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscribe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Recipients] [nvarchar](1024) NULL,
 CONSTRAINT [PK_Subscribe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tag]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlcId] [int] NULL,
	[ShortName] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[LastValue] [float] NULL,
	[LastDateTime] [datetime] NULL,
	[LastResultId] [varchar](32) NULL,
	[TimeOffset] [int] NULL,
	[EmailAlarming] [bit] NULL,
	[SubscribeId] [int] NULL,
	[NormMinValue] [float] NULL,
	[NormMaxValue] [float] NULL,
	[AlarmMessage] [nvarchar](255) NULL,
	[LastAlarmState] [bit] NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[SeverityLowLevel] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkScheduleHolidays]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkScheduleHolidays](
	[Date] [datetime] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[isYearly] [bit] NULL,
 CONSTRAINT [PK_Holidays] PRIMARY KEY CLUSTERED 
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkScheduleMove]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkScheduleMove](
	[DateFrom] [datetime] NOT NULL,
	[DateTo] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DateFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Workstation]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workstation](
	[Id] [int] IDENTITY(85,1) NOT NULL,
	[Factory_id] [int] NULL,
	[Number] [int] NOT NULL,
	[Project_Id] [int] NULL,
	[Username] [nvarchar](128) NULL,
	[Password] [nvarchar](128) NULL,
	[IP] [nvarchar](15) NULL,
	[Enable] [tinyint] NOT NULL,
	[WorkstationName] [nvarchar](255) NOT NULL,
	[MAC] [char](12) NULL,
	[UseMstsc] [bit] NULL,
 CONSTRAINT [PK_workstation_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Plc_TO_Date]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Plc_TO_Date]
AS
SELECT     TOP (100) PERCENT PlcId, Name, Descr, Topic,
                          (SELECT     TOP (1) DATE
                            FROM          dbo.PLC_TO
                            WHERE      (PlcId = dbo.PLC.PlcId)
                            ORDER BY DATE DESC) AS DATA_TO
FROM         dbo.PLC
ORDER BY FactoryId, PositionNumber

GO
/****** Object:  View [dbo].[v_Workstation]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Workstation]
AS
SELECT     dbo.Workstation.Id, dbo.Workstation.Factory_id, dbo.Workstation.IP, dbo.Workstation.Number, dbo.Workstation.WorkstationName, 
                      dbo.Project.ProjectName, dbo.Workstation.Username, dbo.Workstation.Password, dbo.Workstation.Enable, dbo.Workstation.UseMstsc, 
                      dbo.Project.IDE
FROM         dbo.Workstation LEFT OUTER JOIN
                      dbo.Project ON dbo.Workstation.Project_Id = dbo.Project.Id

GO
ALTER TABLE [dbo].[Archive] ADD  CONSTRAINT [DF_Archive_DateTime]  DEFAULT (getdate()) FOR [DateTime]
GO
ALTER TABLE [dbo].[Codes] ADD  CONSTRAINT [DF_Codes_ShowValue]  DEFAULT ('True') FOR [ShowValue]
GO
ALTER TABLE [dbo].[Events_Pc] ADD  CONSTRAINT [DF_Events_Pc_Time]  DEFAULT (getdate()) FOR [Time]
GO
ALTER TABLE [dbo].[EventsOld] ADD  CONSTRAINT [DF__OldPLC_Ev__Messa__1CF15040]  DEFAULT (NULL) FOR [Message]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_MessageGroup]  DEFAULT ((0)) FOR [MessageGroup]
GO
ALTER TABLE [dbo].[PcEventIgnoreWords] ADD  DEFAULT ((1)) FOR [Enable]
GO
ALTER TABLE [dbo].[PLC] ADD  CONSTRAINT [DF__PLC__PlcTypeId__03317E3D]  DEFAULT (NULL) FOR [PlcTypeId]
GO
ALTER TABLE [dbo].[PLC] ADD  CONSTRAINT [DF__PLC__FactoryId__0425A276]  DEFAULT (NULL) FOR [FactoryId]
GO
ALTER TABLE [dbo].[PLC] ADD  CONSTRAINT [DF__PLC__Topic__0519C6AF]  DEFAULT (NULL) FOR [Topic]
GO
ALTER TABLE [dbo].[PLC] ADD  CONSTRAINT [DF__PLC__ProtocolTyp__060DEAE8]  DEFAULT (NULL) FOR [ProtocolType]
GO
ALTER TABLE [dbo].[PLC] ADD  CONSTRAINT [DF__PLC__LastEventIn__07020F21]  DEFAULT (NULL) FOR [LastEventIndex]
GO
ALTER TABLE [dbo].[PLC] ADD  CONSTRAINT [DF__PLC__LastEventDa__07F6335A]  DEFAULT (NULL) FOR [LastEventDateTime]
GO
ALTER TABLE [dbo].[PLC] ADD  CONSTRAINT [DF__PLC__LastEventMs__08EA5793]  DEFAULT (NULL) FOR [LastEventMsec]
GO
ALTER TABLE [dbo].[PLC] ADD  CONSTRAINT [DF__PLC__Faults__09DE7BCC]  DEFAULT (NULL) FOR [Faults]
GO
ALTER TABLE [dbo].[PLC] ADD  CONSTRAINT [DF__PLC__href__0AD2A005]  DEFAULT (NULL) FOR [href]
GO
ALTER TABLE [dbo].[PLC] ADD  CONSTRAINT [DF_PLC_ProtocolEnabled]  DEFAULT ((1)) FOR [ProtocolEnabled]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF__project__Path__625A9A57]  DEFAULT (NULL) FOR [Path]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF__project__Version__634EBE90]  DEFAULT (NULL) FOR [Version]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF__project__IDE__6442E2C9]  DEFAULT (NULL) FOR [IDE]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF_Project_FactoryId]  DEFAULT ((100)) FOR [FactoryId]
GO
ALTER TABLE [dbo].[Workstation] ADD  CONSTRAINT [DF__workstati__Usern__65370702]  DEFAULT (NULL) FOR [Username]
GO
ALTER TABLE [dbo].[Workstation] ADD  CONSTRAINT [DF__workstati__Passw__662B2B3B]  DEFAULT (NULL) FOR [Password]
GO
ALTER TABLE [dbo].[Workstation] ADD  CONSTRAINT [DF__workstation__IP__671F4F74]  DEFAULT (NULL) FOR [IP]
GO
ALTER TABLE [dbo].[Workstation] ADD  CONSTRAINT [DF__workstati__Enabl__681373AD]  DEFAULT ((0)) FOR [Enable]
GO
ALTER TABLE [dbo].[Workstation] ADD  CONSTRAINT [DF__workstation__MAC__690797E6]  DEFAULT (NULL) FOR [MAC]
GO
ALTER TABLE [dbo].[AlarmEvents]  WITH CHECK ADD  CONSTRAINT [FK_AlarmEvents_AlarmTags] FOREIGN KEY([PlcId], [TagId])
REFERENCES [dbo].[AlarmTags] ([PlcId], [TagId])
GO
ALTER TABLE [dbo].[AlarmEvents] CHECK CONSTRAINT [FK_AlarmEvents_AlarmTags]
GO
ALTER TABLE [dbo].[AlarmTags]  WITH CHECK ADD  CONSTRAINT [FK_AlarmTags_PLC] FOREIGN KEY([PlcId])
REFERENCES [dbo].[PLC] ([PlcId])
GO
ALTER TABLE [dbo].[AlarmTags] CHECK CONSTRAINT [FK_AlarmTags_PLC]
GO
ALTER TABLE [dbo].[AlarmValues]  WITH CHECK ADD  CONSTRAINT [FK_AlarmValues_AlarmTags] FOREIGN KEY([PlcId], [TagId])
REFERENCES [dbo].[AlarmTags] ([PlcId], [TagId])
GO
ALTER TABLE [dbo].[AlarmValues] CHECK CONSTRAINT [FK_AlarmValues_AlarmTags]
GO
ALTER TABLE [dbo].[Archive]  WITH CHECK ADD  CONSTRAINT [FK_Archive_Tag] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tag] ([Id])
GO
ALTER TABLE [dbo].[Archive] CHECK CONSTRAINT [FK_Archive_Tag]
GO
ALTER TABLE [dbo].[ArchiveCache]  WITH CHECK ADD  CONSTRAINT [FK_ArchiveCache_Tag] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tag] ([Id])
GO
ALTER TABLE [dbo].[ArchiveCache] CHECK CONSTRAINT [FK_ArchiveCache_Tag]
GO
ALTER TABLE [dbo].[Codes]  WITH CHECK ADD  CONSTRAINT [FK_Codes_Severity] FOREIGN KEY([SeverityNumber])
REFERENCES [dbo].[Severity] ([Number])
GO
ALTER TABLE [dbo].[Codes] CHECK CONSTRAINT [FK_Codes_Severity]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Codes] FOREIGN KEY([s])
REFERENCES [dbo].[Codes] ([CodeId])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Codes]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_PLC] FOREIGN KEY([PlcId])
REFERENCES [dbo].[PLC] ([PlcId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_PLC]
GO
ALTER TABLE [dbo].[Events_Pc]  WITH CHECK ADD  CONSTRAINT [FK_Events_Pc_Workstation] FOREIGN KEY([Workstation_id])
REFERENCES [dbo].[Workstation] ([Id])
GO
ALTER TABLE [dbo].[Events_Pc] CHECK CONSTRAINT [FK_Events_Pc_Workstation]
GO
ALTER TABLE [dbo].[EventsAlarm]  WITH CHECK ADD  CONSTRAINT [FK_EventsAlarm_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([EventId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EventsAlarm] CHECK CONSTRAINT [FK_EventsAlarm_Events]
GO
ALTER TABLE [dbo].[EventsOld]  WITH CHECK ADD  CONSTRAINT [FK_EventsOld_PLC] FOREIGN KEY([PlcId])
REFERENCES [dbo].[PLC] ([PlcId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[EventsOld] CHECK CONSTRAINT [FK_EventsOld_PLC]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_PLC] FOREIGN KEY([PlcID])
REFERENCES [dbo].[PLC] ([PlcId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_PLC]
GO
ALTER TABLE [dbo].[PLC]  WITH CHECK ADD  CONSTRAINT [FK_PLC_DataLogGate] FOREIGN KEY([OpcDataLoggerId])
REFERENCES [dbo].[OpcDataLogger] ([Id])
GO
ALTER TABLE [dbo].[PLC] CHECK CONSTRAINT [FK_PLC_DataLogGate]
GO
ALTER TABLE [dbo].[PLC]  WITH CHECK ADD  CONSTRAINT [FK_PLC_Factory] FOREIGN KEY([FactoryId])
REFERENCES [dbo].[Factory] ([FactoryId])
GO
ALTER TABLE [dbo].[PLC] CHECK CONSTRAINT [FK_PLC_Factory]
GO
ALTER TABLE [dbo].[PLC_Description]  WITH CHECK ADD  CONSTRAINT [FK_PLC_Description_PLC] FOREIGN KEY([Id])
REFERENCES [dbo].[PLC] ([PlcId])
GO
ALTER TABLE [dbo].[PLC_Description] CHECK CONSTRAINT [FK_PLC_Description_PLC]
GO
ALTER TABLE [dbo].[PLC_TO]  WITH CHECK ADD  CONSTRAINT [FK_PLC_TO_PLC] FOREIGN KEY([PlcId])
REFERENCES [dbo].[PLC] ([PlcId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PLC_TO] CHECK CONSTRAINT [FK_PLC_TO_PLC]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Factory] FOREIGN KEY([FactoryId])
REFERENCES [dbo].[Factory] ([FactoryId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Factory]
GO
ALTER TABLE [dbo].[RsViewProjectTags]  WITH CHECK ADD  CONSTRAINT [FK_RsViewProjectAllTags_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[RsViewProjectTags] CHECK CONSTRAINT [FK_RsViewProjectAllTags_Project]
GO
ALTER TABLE [dbo].[RsViewProjectTags]  WITH CHECK ADD  CONSTRAINT [FK_RsViewProjectTags_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[RsViewProjectTags] CHECK CONSTRAINT [FK_RsViewProjectTags_Project]
GO
ALTER TABLE [dbo].[Tag]  WITH CHECK ADD  CONSTRAINT [FK_Tag_PLC] FOREIGN KEY([PlcId])
REFERENCES [dbo].[PLC] ([PlcId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Tag] CHECK CONSTRAINT [FK_Tag_PLC]
GO
ALTER TABLE [dbo].[Tag]  WITH CHECK ADD  CONSTRAINT [FK_Tag_Subscribe] FOREIGN KEY([SubscribeId])
REFERENCES [dbo].[Subscribe] ([Id])
GO
ALTER TABLE [dbo].[Tag] CHECK CONSTRAINT [FK_Tag_Subscribe]
GO
ALTER TABLE [dbo].[Workstation]  WITH CHECK ADD  CONSTRAINT [FK_Workstation_Project] FOREIGN KEY([Project_Id])
REFERENCES [dbo].[Project] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Workstation] CHECK CONSTRAINT [FK_Workstation_Project]
GO
/****** Object:  StoredProcedure [dbo].[GetPlcEventsCount]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Pavel Kozlov
-- Create date: 2015-03-04
-- Description:	Gets summary PLC event count and alarm count from @DateFrom to @DateTo with @Sevetiry Level
-- =============================================

CREATE PROCEDURE [dbo].[GetPlcEventsCount]
	@DateFrom DateTime,
	@DateTo DateTime,
	@Severity smallint = 2
AS

BEGIN
	SET NOCOUNT ON;
	
	;WITH 
	EventFiler AS (
		SELECT ev.*, cd.SeverityNumber
		FROM Events as ev
		INNER JOIN Codes as cd ON cd.CodeId = ev.s
		WHERE DateTime >= @DateFrom AND DateTime < @DateTo
	), 

	AllCount AS (
		SELECT PlcId, COUNT(1) as Count
		FROM EventFiler 
		GROUP BY PlcId
	),
	
	AlarmCount AS (
		SELECT PlcId, COUNT(1) as Count
		FROM EventFiler 
		WHERE (SeverityNumber <= @Severity) 
		GROUP BY PlcId
	),
		
	EventOldFiler AS (
		SELECT *
		FROM EventsOld
		WHERE DateTime >= @DateFrom AND DateTime < @DateTo
	), 
	AllCountOld AS (
		SELECT PlcId, COUNT(1) as Count
		FROM EventOldFiler 
		GROUP BY PlcId
	),	
	AlarmCountOld AS (
		SELECT PlcId, COUNT(1) as Count
		FROM EventOldFiler 
		WHERE SUBSTRING(Message,11,2) in ('LL', 'HH')
		GROUP BY PlcId
	)
		
	
	(
	SELECT 
		AllCount.PlcId,
		AllCount.Count as TotalCount,
		COALESCE(AlarmCount.Count,0) as AlarmCount
	FROM AllCount
		Left Outer JOIN AlarmCount ON AllCount.PlcId = AlarmCount.PlcId
	)
	UNION
	(
	SELECT 
		AllCountOld.PlcId,
		AllCountOld.Count as TotalCount,
		COALESCE(AlarmCountOld.Count,0) as AlarmCount
	FROM AllCountOld
		Left Outer JOIN AlarmCountOld ON AllCountOld.PlcId = AlarmCountOld.PlcId
	)
END


GO
/****** Object:  StoredProcedure [dbo].[GetPlcName]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlcName]
	@PlcId INT
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Name, Descr, Topic, href FROM plc
	WHERE PlcId = @PlcId;

END

GO
/****** Object:  StoredProcedure [dbo].[p_Get_P9_FSC_Tag]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Vakhmintsev V.V.
-- Create date: 2015-03-22
-- Description:	Gets the RSView Tags data
-- =============================================
CREATE PROCEDURE [dbo].[p_Get_P9_FSC_Tag]
(
	@tag VARCHAR(24) = '',
	@loc VARCHAR(4) = '',
	@localTagsOn BIT = 0
)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT *
	FROM P9_FSC_Tag 
	WHERE TagNumber Like '%'+@tag+'%'
		AND Loc LIKE '%' + @loc + '%'
		AND (@localTagsOn = 1 OR Type NOT IN ('M', 'R', 'T'))

END


GO
/****** Object:  StoredProcedure [dbo].[p_GetDataForCNIK]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetDataForCNIK] (
@Date DATETIME,
@ShortName NVARCHAR(255)
)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @TagId INT;
	DECLARE @TimeOffset INT;

	SELECT @TagId = Id, @TimeOffset = TimeOffset FROM Tag WHERE ShortName = @ShortName;

	IF @TimeOffset IS NOT NULL BEGIN
		SET @Date = DATEADD (MINUTE, @TimeOffset, @Date);
	END;


	DECLARE @Result TABLE (
		Value0 FLOAT,
		Value1 FLOAT,
		Value2 FLOAT,
		Value3 FLOAT,
		Value4 FLOAT,
		Value5 FLOAT,
		Value6 FLOAT,
		Value7 FLOAT,
		Value8 FLOAT,
		Value9 FLOAT,
		Value10 FLOAT,
		Value11 FLOAT,
		Value12 FLOAT,
		Value13 FLOAT,
		Value14 FLOAT,
		Value15 FLOAT,
		Value16 FLOAT,
		Value17 FLOAT,
		Value18 FLOAT,
		Value19 FLOAT,
		Value20 FLOAT,
		Value21 FLOAT,
		Value22 FLOAT,
		Value23 FLOAT,
		Value24 FLOAT
	);

	INSERT INTO @result (Value0) VALUES (NULL);
	
	IF @TagId IS NULL BEGIN
		SELECT * FROM @Result;
		RETURN;
	END;

	DECLARE @TimeOffset0 DATETIME;
	DECLARE @TimeOffset1 DATETIME;
	DECLARE @TimeOffset2 DATETIME;
	DECLARE @TimeOffset3 DATETIME;
	DECLARE @TimeOffset4 DATETIME;
	DECLARE @TimeOffset5 DATETIME;
	DECLARE @TimeOffset6 DATETIME;
	DECLARE @TimeOffset7 DATETIME;
	DECLARE @TimeOffset8 DATETIME;
	DECLARE @TimeOffset9 DATETIME;
	DECLARE @TimeOffset10 DATETIME;
	DECLARE @TimeOffset11 DATETIME;
	DECLARE @TimeOffset12 DATETIME;
	DECLARE @TimeOffset13 DATETIME;
	DECLARE @TimeOffset14 DATETIME;
	DECLARE @TimeOffset15 DATETIME;
	DECLARE @TimeOffset16 DATETIME;
	DECLARE @TimeOffset17 DATETIME;
	DECLARE @TimeOffset18 DATETIME;
	DECLARE @TimeOffset19 DATETIME;
	DECLARE @TimeOffset20 DATETIME;
	DECLARE @TimeOffset21 DATETIME;
	DECLARE @TimeOffset22 DATETIME;
	DECLARE @TimeOffset23 DATETIME;
	DECLARE @TimeOffset24 DATETIME;

	DECLARE @TimeOffset0To DATETIME;
	DECLARE @TimeOffset1To DATETIME;
	DECLARE @TimeOffset2To DATETIME;
	DECLARE @TimeOffset3To DATETIME;
	DECLARE @TimeOffset4To DATETIME;
	DECLARE @TimeOffset5To DATETIME;
	DECLARE @TimeOffset6To DATETIME;
	DECLARE @TimeOffset7To DATETIME;
	DECLARE @TimeOffset8To DATETIME;
	DECLARE @TimeOffset9To DATETIME;
	DECLARE @TimeOffset10To DATETIME;
	DECLARE @TimeOffset11To DATETIME;
	DECLARE @TimeOffset12To DATETIME;
	DECLARE @TimeOffset13To DATETIME;
	DECLARE @TimeOffset14To DATETIME;
	DECLARE @TimeOffset15To DATETIME;
	DECLARE @TimeOffset16To DATETIME;
	DECLARE @TimeOffset17To DATETIME;
	DECLARE @TimeOffset18To DATETIME;
	DECLARE @TimeOffset19To DATETIME;
	DECLARE @TimeOffset20To DATETIME;
	DECLARE @TimeOffset21To DATETIME;
	DECLARE @TimeOffset22To DATETIME;
	DECLARE @TimeOffset23To DATETIME;
	DECLARE @TimeOffset24To DATETIME;

	DECLARE @Value0 FLOAT;
	DECLARE @Value1 FLOAT;
	DECLARE @Value2 FLOAT;
	DECLARE @Value3 FLOAT;
	DECLARE @Value4 FLOAT;
	DECLARE @Value5 FLOAT;
	DECLARE @Value6 FLOAT;
	DECLARE @Value7 FLOAT;
	DECLARE @Value8 FLOAT;
	DECLARE @Value9 FLOAT;
	DECLARE @Value10 FLOAT;
	DECLARE @Value11 FLOAT;
	DECLARE @Value12 FLOAT;
	DECLARE @Value13 FLOAT;
	DECLARE @Value14 FLOAT;
	DECLARE @Value15 FLOAT;
	DECLARE @Value16 FLOAT;
	DECLARE @Value17 FLOAT;
	DECLARE @Value18 FLOAT;
	DECLARE @Value19 FLOAT;
	DECLARE @Value20 FLOAT;
	DECLARE @Value21 FLOAT;
	DECLARE @Value22 FLOAT;
	DECLARE @Value23 FLOAT;
	DECLARE @Value24 FLOAT;

	SET @TimeOffset0 = @Date;
	SET @TimeOffset1 = DATEADD(HOUR, 1, @Date);
	SET @TimeOffset2 = DATEADD(HOUR, 2, @Date);
	SET @TimeOffset3 = DATEADD(HOUR, 3, @Date);
	SET @TimeOffset4 = DATEADD(HOUR, 4, @Date);
	SET @TimeOffset5 = DATEADD(HOUR, 5, @Date);
	SET @TimeOffset6 = DATEADD(HOUR, 6, @Date);
	SET @TimeOffset7 = DATEADD(HOUR, 7, @Date);
	SET @TimeOffset8 = DATEADD(HOUR, 8, @Date);
	SET @TimeOffset9 = DATEADD(HOUR, 9, @Date);
	SET @TimeOffset10 = DATEADD(HOUR, 10, @Date);
	SET @TimeOffset11 = DATEADD(HOUR, 11, @Date);
	SET @TimeOffset12 = DATEADD(HOUR, 12, @Date);
	SET @TimeOffset13 = DATEADD(HOUR, 13, @Date);
	SET @TimeOffset14 = DATEADD(HOUR, 14, @Date);
	SET @TimeOffset15 = DATEADD(HOUR, 15, @Date);
	SET @TimeOffset16 = DATEADD(HOUR, 16, @Date);
	SET @TimeOffset17 = DATEADD(HOUR, 17, @Date);
	SET @TimeOffset18 = DATEADD(HOUR, 18, @Date);
	SET @TimeOffset19 = DATEADD(HOUR, 19, @Date);
	SET @TimeOffset20 = DATEADD(HOUR, 20, @Date);
	SET @TimeOffset21 = DATEADD(HOUR, 21, @Date);
	SET @TimeOffset22 = DATEADD(HOUR, 22, @Date);
	SET @TimeOffset23 = DATEADD(HOUR, 23, @Date);
	SET @TimeOffset24 = DATEADD(HOUR, 24, @Date);

	SET @TimeOffset0To = DATEADD(MINUTE, 2, @TimeOffset0);
	SET @TimeOffset1To = DATEADD(MINUTE, 2, @TimeOffset1);
	SET @TimeOffset2To = DATEADD(MINUTE, 2, @TimeOffset2);
	SET @TimeOffset3To = DATEADD(MINUTE, 2, @TimeOffset3);
	SET @TimeOffset4To = DATEADD(MINUTE, 2, @TimeOffset4);
	SET @TimeOffset5To = DATEADD(MINUTE, 2, @TimeOffset5);
	SET @TimeOffset6To = DATEADD(MINUTE, 2, @TimeOffset6);
	SET @TimeOffset7To = DATEADD(MINUTE, 2, @TimeOffset7);
	SET @TimeOffset8To = DATEADD(MINUTE, 2, @TimeOffset8);
	SET @TimeOffset9To = DATEADD(MINUTE, 2, @TimeOffset9);
	SET @TimeOffset10To = DATEADD(MINUTE, 2, @TimeOffset10);
	SET @TimeOffset11To = DATEADD(MINUTE, 2, @TimeOffset11);
	SET @TimeOffset12To = DATEADD(MINUTE, 2, @TimeOffset12);
	SET @TimeOffset13To = DATEADD(MINUTE, 2, @TimeOffset13);
	SET @TimeOffset14To = DATEADD(MINUTE, 2, @TimeOffset14);
	SET @TimeOffset15To = DATEADD(MINUTE, 2, @TimeOffset15);
	SET @TimeOffset16To = DATEADD(MINUTE, 2, @TimeOffset16);
	SET @TimeOffset17To = DATEADD(MINUTE, 2, @TimeOffset17);
	SET @TimeOffset18To = DATEADD(MINUTE, 2, @TimeOffset18);
	SET @TimeOffset19To = DATEADD(MINUTE, 2, @TimeOffset19);
	SET @TimeOffset20To = DATEADD(MINUTE, 2, @TimeOffset20);
	SET @TimeOffset21To = DATEADD(MINUTE, 2, @TimeOffset21);
	SET @TimeOffset22To = DATEADD(MINUTE, 2, @TimeOffset22);
	SET @TimeOffset23To = DATEADD(MINUTE, 2, @TimeOffset23);
	SET @TimeOffset24To = DATEADD(MINUTE, 2, @TimeOffset24);

	DECLARE @ArchiveCache TABLE (
		Value	FLOAT,
		DateTime DateTime
	);
	
	INSERT INTO @ArchiveCache (Value, DateTime) 
	(SELECT Value, DateTime FROM ArchiveCache WHERE TagId = @TagId AND ResultId = 'S_OK');
	

	SELECT @Value0 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset0 AND DateTime <= @TimeOffset0To
	SELECT @Value1 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset1 AND DateTime <= @TimeOffset1To
	SELECT @Value2 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset2 AND DateTime <= @TimeOffset2To
	SELECT @Value3 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset3 AND DateTime <= @TimeOffset3To
	SELECT @Value4 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset4 AND DateTime <= @TimeOffset4To
	SELECT @Value5 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset5 AND DateTime <= @TimeOffset5To
	SELECT @Value6 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset6 AND DateTime <= @TimeOffset6To
	SELECT @Value7 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset7 AND DateTime <= @TimeOffset7To
	SELECT @Value8 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset8 AND DateTime <= @TimeOffset8To
	SELECT @Value9 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset9 AND DateTime <= @TimeOffset9To
	SELECT @Value10 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset10 AND DateTime <= @TimeOffset10To
	SELECT @Value11 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset11 AND DateTime <= @TimeOffset11To
	SELECT @Value12 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset12 AND DateTime <= @TimeOffset12To
	SELECT @Value13 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset13 AND DateTime <= @TimeOffset13To
	SELECT @Value14 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset14 AND DateTime <= @TimeOffset14To
	SELECT @Value15 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset15 AND DateTime <= @TimeOffset15To
	SELECT @Value16 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset16 AND DateTime <= @TimeOffset16To
	SELECT @Value17 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset17 AND DateTime <= @TimeOffset17To
	SELECT @Value18 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset18 AND DateTime <= @TimeOffset18To
	SELECT @Value19 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset19 AND DateTime <= @TimeOffset19To
	SELECT @Value20 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset20 AND DateTime <= @TimeOffset20To
	SELECT @Value21 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset21 AND DateTime <= @TimeOffset21To
	SELECT @Value22 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset22 AND DateTime <= @TimeOffset22To
	SELECT @Value23 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset23 AND DateTime <= @TimeOffset23To
	SELECT @Value24 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset24 AND DateTime <= @TimeOffset24To


	UPDATE @Result SET 
		Value0 = @Value0,
		Value1 = @Value1,
		Value2 = @Value2,
		Value3 = @Value3,
		Value4 = @Value4,
		Value5 = @Value5,
		Value6 = @Value6,
		Value7 = @Value7,
		Value8 = @Value8,
		Value9 = @Value9,
		Value10 = @Value10,
		Value11 = @Value11,
		Value12 = @Value12,
		Value13 = @Value13,
		Value14 = @Value14,
		Value15 = @Value15,
		Value16 = @Value16,
		Value17 = @Value17,
		Value18 = @Value18,
		Value19 = @Value19,
		Value20 = @Value20,
		Value21 = @Value21,
		Value22 = @Value22,
		Value23 = @Value23,
		Value24 = @Value24;

	SELECT * FROM @Result;

END


GO
/****** Object:  StoredProcedure [dbo].[p_GetDataForCNIK15min]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetDataForCNIK15min] (
@Date DATETIME,
@ShortName NVARCHAR(255)
)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @TagId INT;
	DECLARE @TimeOffset INT;

	SELECT @TagId = Id, @TimeOffset = TimeOffset FROM Tag WHERE ShortName = @ShortName;
	PRINT STR(@TagId);
	

	IF @TimeOffset IS NOT NULL BEGIN
		SET @Date = DATEADD (MINUTE, @TimeOffset, @Date);
	END;


	DECLARE @Result TABLE (
		Value0 FLOAT,
		Value1 FLOAT,
		Value2 FLOAT,
		Value3 FLOAT,
		Value4 FLOAT,
		Value5 FLOAT,
		Value6 FLOAT,
		Value7 FLOAT,
		Value8 FLOAT,
		Value9 FLOAT,
		Value10 FLOAT,
		Value11 FLOAT,
		Value12 FLOAT,
		Value13 FLOAT,
		Value14 FLOAT,
		Value15 FLOAT,
		Value16 FLOAT,
		Value17 FLOAT,
		Value18 FLOAT,
		Value19 FLOAT,
		Value20 FLOAT,
		Value21 FLOAT,
		Value22 FLOAT,
		Value23 FLOAT,
		Value24 FLOAT
	);

	INSERT INTO @result (Value0) VALUES (NULL);
	
	IF @TagId IS NULL BEGIN
		SELECT * FROM @Result;
		RETURN;
	END;

	DECLARE @TimeOffset0 DATETIME;
	DECLARE @TimeOffset1 DATETIME;
	DECLARE @TimeOffset2 DATETIME;
	DECLARE @TimeOffset3 DATETIME;
	DECLARE @TimeOffset4 DATETIME;
	DECLARE @TimeOffset5 DATETIME;
	DECLARE @TimeOffset6 DATETIME;
	DECLARE @TimeOffset7 DATETIME;
	DECLARE @TimeOffset8 DATETIME;
	DECLARE @TimeOffset9 DATETIME;
	DECLARE @TimeOffset10 DATETIME;
	DECLARE @TimeOffset11 DATETIME;
	DECLARE @TimeOffset12 DATETIME;
	DECLARE @TimeOffset13 DATETIME;
	DECLARE @TimeOffset14 DATETIME;
	DECLARE @TimeOffset15 DATETIME;
	DECLARE @TimeOffset16 DATETIME;
	DECLARE @TimeOffset17 DATETIME;
	DECLARE @TimeOffset18 DATETIME;
	DECLARE @TimeOffset19 DATETIME;
	DECLARE @TimeOffset20 DATETIME;
	DECLARE @TimeOffset21 DATETIME;
	DECLARE @TimeOffset22 DATETIME;
	DECLARE @TimeOffset23 DATETIME;
	DECLARE @TimeOffset24 DATETIME;

	DECLARE @TimeOffset0To DATETIME;
	DECLARE @TimeOffset1To DATETIME;
	DECLARE @TimeOffset2To DATETIME;
	DECLARE @TimeOffset3To DATETIME;
	DECLARE @TimeOffset4To DATETIME;
	DECLARE @TimeOffset5To DATETIME;
	DECLARE @TimeOffset6To DATETIME;
	DECLARE @TimeOffset7To DATETIME;
	DECLARE @TimeOffset8To DATETIME;
	DECLARE @TimeOffset9To DATETIME;
	DECLARE @TimeOffset10To DATETIME;
	DECLARE @TimeOffset11To DATETIME;
	DECLARE @TimeOffset12To DATETIME;
	DECLARE @TimeOffset13To DATETIME;
	DECLARE @TimeOffset14To DATETIME;
	DECLARE @TimeOffset15To DATETIME;
	DECLARE @TimeOffset16To DATETIME;
	DECLARE @TimeOffset17To DATETIME;
	DECLARE @TimeOffset18To DATETIME;
	DECLARE @TimeOffset19To DATETIME;
	DECLARE @TimeOffset20To DATETIME;
	DECLARE @TimeOffset21To DATETIME;
	DECLARE @TimeOffset22To DATETIME;
	DECLARE @TimeOffset23To DATETIME;
	DECLARE @TimeOffset24To DATETIME;

	DECLARE @Value0 FLOAT;
	DECLARE @Value1 FLOAT;
	DECLARE @Value2 FLOAT;
	DECLARE @Value3 FLOAT;
	DECLARE @Value4 FLOAT;
	DECLARE @Value5 FLOAT;
	DECLARE @Value6 FLOAT;
	DECLARE @Value7 FLOAT;
	DECLARE @Value8 FLOAT;
	DECLARE @Value9 FLOAT;
	DECLARE @Value10 FLOAT;
	DECLARE @Value11 FLOAT;
	DECLARE @Value12 FLOAT;
	DECLARE @Value13 FLOAT;
	DECLARE @Value14 FLOAT;
	DECLARE @Value15 FLOAT;
	DECLARE @Value16 FLOAT;
	DECLARE @Value17 FLOAT;
	DECLARE @Value18 FLOAT;
	DECLARE @Value19 FLOAT;
	DECLARE @Value20 FLOAT;
	DECLARE @Value21 FLOAT;
	DECLARE @Value22 FLOAT;
	DECLARE @Value23 FLOAT;
	DECLARE @Value24 FLOAT;

	SET @TimeOffset0 = @Date;
	SET @TimeOffset1 = DATEADD(MINUTE, 15, @Date);
	SET @TimeOffset2 = DATEADD(MINUTE, 30, @Date);
	SET @TimeOffset3 = DATEADD(MINUTE, 45, @Date);
	SET @TimeOffset4 = DATEADD(MINUTE, 60, @Date);
	SET @TimeOffset5 = DATEADD(MINUTE, 75, @Date);
	SET @TimeOffset6 = DATEADD(MINUTE, 90, @Date);
	SET @TimeOffset7 = DATEADD(MINUTE, 105, @Date);
	SET @TimeOffset8 = DATEADD(MINUTE, 120, @Date);
	SET @TimeOffset9 = DATEADD(MINUTE, 135, @Date);
	SET @TimeOffset10 = DATEADD(MINUTE, 150, @Date);
	SET @TimeOffset11 = DATEADD(MINUTE, 165, @Date);
	SET @TimeOffset12 = DATEADD(MINUTE, 180, @Date);
	SET @TimeOffset13 = DATEADD(MINUTE, 195, @Date);
	SET @TimeOffset14 = DATEADD(MINUTE, 210, @Date);
	SET @TimeOffset15 = DATEADD(MINUTE, 225, @Date);
	SET @TimeOffset16 = DATEADD(MINUTE, 240, @Date);
	SET @TimeOffset17 = DATEADD(MINUTE, 255, @Date);
	SET @TimeOffset18 = DATEADD(MINUTE, 270, @Date);
	SET @TimeOffset19 = DATEADD(MINUTE, 285, @Date);
	SET @TimeOffset20 = DATEADD(MINUTE, 300, @Date);
	SET @TimeOffset21 = DATEADD(MINUTE, 315, @Date);
	SET @TimeOffset22 = DATEADD(MINUTE, 330, @Date);
	SET @TimeOffset23 = DATEADD(MINUTE, 345, @Date);
	SET @TimeOffset24 = DATEADD(MINUTE, 360, @Date);

	SET @TimeOffset0To = DATEADD(MINUTE, 2, @TimeOffset0);
	SET @TimeOffset1To = DATEADD(MINUTE, 2, @TimeOffset1);
	SET @TimeOffset2To = DATEADD(MINUTE, 2, @TimeOffset2);
	SET @TimeOffset3To = DATEADD(MINUTE, 2, @TimeOffset3);
	SET @TimeOffset4To = DATEADD(MINUTE, 2, @TimeOffset4);
	SET @TimeOffset5To = DATEADD(MINUTE, 2, @TimeOffset5);
	SET @TimeOffset6To = DATEADD(MINUTE, 2, @TimeOffset6);
	SET @TimeOffset7To = DATEADD(MINUTE, 2, @TimeOffset7);
	SET @TimeOffset8To = DATEADD(MINUTE, 2, @TimeOffset8);
	SET @TimeOffset9To = DATEADD(MINUTE, 2, @TimeOffset9);
	SET @TimeOffset10To = DATEADD(MINUTE, 2, @TimeOffset10);
	SET @TimeOffset11To = DATEADD(MINUTE, 2, @TimeOffset11);
	SET @TimeOffset12To = DATEADD(MINUTE, 2, @TimeOffset12);
	SET @TimeOffset13To = DATEADD(MINUTE, 2, @TimeOffset13);
	SET @TimeOffset14To = DATEADD(MINUTE, 2, @TimeOffset14);
	SET @TimeOffset15To = DATEADD(MINUTE, 2, @TimeOffset15);
	SET @TimeOffset16To = DATEADD(MINUTE, 2, @TimeOffset16);
	SET @TimeOffset17To = DATEADD(MINUTE, 2, @TimeOffset17);
	SET @TimeOffset18To = DATEADD(MINUTE, 2, @TimeOffset18);
	SET @TimeOffset19To = DATEADD(MINUTE, 2, @TimeOffset19);
	SET @TimeOffset20To = DATEADD(MINUTE, 2, @TimeOffset20);
	SET @TimeOffset21To = DATEADD(MINUTE, 2, @TimeOffset21);
	SET @TimeOffset22To = DATEADD(MINUTE, 2, @TimeOffset22);
	SET @TimeOffset23To = DATEADD(MINUTE, 2, @TimeOffset23);
	SET @TimeOffset24To = DATEADD(MINUTE, 2, @TimeOffset24);

	DECLARE @ArchiveCache TABLE (
		Value	FLOAT,
		DateTime DateTime
	);
	
	INSERT INTO @ArchiveCache (Value, DateTime) 
	(SELECT Value, DateTime FROM ArchiveCache WHERE TagId = @TagId AND ResultId = 'S_OK');
	

	SELECT @Value0 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset0 AND DateTime <= @TimeOffset0To
	SELECT @Value1 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset1 AND DateTime <= @TimeOffset1To
	SELECT @Value2 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset2 AND DateTime <= @TimeOffset2To
	SELECT @Value3 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset3 AND DateTime <= @TimeOffset3To
	SELECT @Value4 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset4 AND DateTime <= @TimeOffset4To
	SELECT @Value5 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset5 AND DateTime <= @TimeOffset5To
	SELECT @Value6 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset6 AND DateTime <= @TimeOffset6To
	SELECT @Value7 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset7 AND DateTime <= @TimeOffset7To
	SELECT @Value8 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset8 AND DateTime <= @TimeOffset8To
	SELECT @Value9 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset9 AND DateTime <= @TimeOffset9To
	SELECT @Value10 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset10 AND DateTime <= @TimeOffset10To
	SELECT @Value11 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset11 AND DateTime <= @TimeOffset11To
	SELECT @Value12 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset12 AND DateTime <= @TimeOffset12To
	SELECT @Value13 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset13 AND DateTime <= @TimeOffset13To
	SELECT @Value14 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset14 AND DateTime <= @TimeOffset14To
	SELECT @Value15 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset15 AND DateTime <= @TimeOffset15To
	SELECT @Value16 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset16 AND DateTime <= @TimeOffset16To
	SELECT @Value17 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset17 AND DateTime <= @TimeOffset17To
	SELECT @Value18 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset18 AND DateTime <= @TimeOffset18To
	SELECT @Value19 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset19 AND DateTime <= @TimeOffset19To
	SELECT @Value20 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset20 AND DateTime <= @TimeOffset20To
	SELECT @Value21 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset21 AND DateTime <= @TimeOffset21To
	SELECT @Value22 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset22 AND DateTime <= @TimeOffset22To
	SELECT @Value23 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset23 AND DateTime <= @TimeOffset23To
	SELECT @Value24 = Value FROM @ArchiveCache WHERE DateTime >= @TimeOffset24 AND DateTime <= @TimeOffset24To


	UPDATE @Result SET 
		Value0 = @Value0,
		Value1 = @Value1,
		Value2 = @Value2,
		Value3 = @Value3,
		Value4 = @Value4,
		Value5 = @Value5,
		Value6 = @Value6,
		Value7 = @Value7,
		Value8 = @Value8,
		Value9 = @Value9,
		Value10 = @Value10,
		Value11 = @Value11,
		Value12 = @Value12,
		Value13 = @Value13,
		Value14 = @Value14,
		Value15 = @Value15,
		Value16 = @Value16,
		Value17 = @Value17,
		Value18 = @Value18,
		Value19 = @Value19,
		Value20 = @Value20,
		Value21 = @Value21,
		Value22 = @Value22,
		Value23 = @Value23,
		Value24 = @Value24;

	SELECT * FROM @Result;

END



GO
/****** Object:  StoredProcedure [dbo].[p_GetDeviceRun]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetDeviceRun]
	@Id INT,
	--@PlcId INT,
	@DateFrom VARCHAR(32),
	@DateTo VARCHAR(32)
	--@Event_n INT,
	--@v_norm FLOAT
	
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @DateTimeFrom DATETIME;
	DECLARE @DateTimeTo DATETIME;

	SET @DateTimeFrom = CONVERT(DateTime, @DateFrom);
	SET @DateTimeTo = DATEADD (day , 1 , CONVERT(DateTime, @DateTo) );
	
	DECLARE @Now DATETIME;
	SET @Now = GETDATE();
	IF (@DateTimeTo > @Now) BEGIN
		SET @DateTimeTo = @Now;
	END;
	
	DECLARE @PlcId INT;
	DECLARE @Event_n INT;
	DECLARE @v_norm FLOAT;
	
	SELECT
		@PlcId   = PlcId,
		@Event_n = MessageNum,
		@v_Norm  = v_norm
	FROM DeviceRun
	WHERE Id=@Id;
	

	DECLARE @TEMP TABLE (
		DateTime DATETIME,
		State FLOAT);

	INSERT INTO @TEMP
	SELECT TOP 1
		CONVERT (NVARCHAR, @DateTimeFrom, 21) AS DateTime,
		evt.v AS State
	FROM events evt 
	WHERE evt.PlcId = @PlcId
		AND DateTime < @DateTimeFrom
		AND evt.n = @Event_n
	ORDER BY EventId DESC

	INSERT INTO @TEMP
	SELECT 
		CONVERT (NVARCHAR, DATEADD(millisecond, evt.msec, evt.DateTime), 21) AS DateTime,
		evt.v  AS State
	FROM events evt 
	WHERE evt.PlcId = @PlcId
		AND DateTime >= @DateTimeFrom
		AND DateTime < @DateTimeTo
		AND evt.n = @Event_n


	INSERT INTO @TEMP
	(DateTime, State) VALUES (@DateTimeTo, NULL);

	WITH DatePick AS (	
	SELECT
	 ROW_NUMBER() OVER(ORDER BY DateTime) AS id,
	 *
	FROM @Temp), period AS (
	SELECT 
		d1.DateTime AS DateTimeFrom,
		d1.State AS State,
		d2.DateTime AS DateTimeTo,
		d2.State AS NextState,
		DATEDIFF ( second , d1.DateTime , d2.DateTime ) AS Period
	FROM DatePick d1
	INNER JOIN DatePick d2 ON d1.id = (d2.id-1))
	SELECT 
	 CONVERT (NVARCHAR, DateTimeFrom, 21) AS DateTimeFrom,
	 CONVERT (NVARCHAR, DateTimeTo, 21) AS DateTimeTo,
	 Period
	 --SUM(Period) AS SummaryRun
	FROM period 
	WHERE state = @v_norm;

END

GO
/****** Object:  StoredProcedure [dbo].[p_GetDeviceRunList]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetDeviceRunList]
(@Id INT = NULL)
AS
BEGIN

	SET NOCOUNT ON;

	SELECT 
		plc.FactoryId,
		fct.Descr AS Department,
		plc.Name,
		dvr.id,
		dvr.PlcId,
		dvr.MessageNum,
		dvr.v_Norm,
		msg.MessageText,
		dvr.DeviceName
	FROM DeviceRun dvr
		INNER JOIN Plc plc ON dvr.PlcId=plc.PlcId
		INNER JOIN Factory fct ON fct.FactoryId=plc.FactoryId
		INNER JOIN Messages msg ON (msg.MessageNum=dvr.MessageNum AND msg.PlcId=dvr.PlcId)
	WHERE @Id IS NULL OR dvr.id=@id
	ORDER BY plc.FactoryId, dvr.SortOrder, msg.MessageText



END

GO
/****** Object:  StoredProcedure [dbo].[p_GetPlcEvents]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetPlcEvents]
	@PlcId INT,
	@DateFrom VARCHAR(32),
	@DateTo VARCHAR(32),
	@HideBreaks BIT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @DateTimeFrom DATETIME;
	DECLARE @DateTimeTo DATETIME;

	SET @DateTimeFrom = CONVERT(DateTime, @DateFrom);
	SET @DateTimeTo = CONVERT(DateTime, @DateTo);

	SELECT 
		evt.LogPos,
		evt.EventId,
		evt.PlcId,
		CONVERT (NVARCHAR, DATEADD(millisecond, evt.msec, evt.DateTime), 21) AS DateTime,
		evt.n,
		evt.s,
		evt.v,
		msg.MessageNum,
		msg.MessageText,
		cod.CodeDescr 
	FROM events evt 
		LEFT JOIN messages msg ON msg.PlcId = evt.PlcId AND msg.MessageNum = evt.n 
		LEFT JOIN codes cod ON cod.CodeId = evt.s 
	WHERE 
		    evt.PlcId = @PlcId
		AND DateTime >= @DateTimeFrom
		AND DateTime <= @DateTimeTo
		AND (@HideBreaks=0 OR evt.s NOT IN (16, 48)) 
	--{AND_CLAUSE}
	ORDER BY EventId;

END

GO
/****** Object:  StoredProcedure [dbo].[p_GetPlcEvents2]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetPlcEvents2]
	@PlcId INT,
	@DateFrom VARCHAR(32),
	@DateTo VARCHAR(32),
	@HideBreaks BIT = 0,
	@Messages VARCHAR(max)='',
	@MessageText VARCHAR(max)=''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @DateTimeFrom DATETIME;
	DECLARE @DateTimeTo DATETIME;

	SET @DateTimeFrom = CONVERT(DateTime, @DateFrom);
	SET @DateTimeTo = CONVERT(DateTime, @DateTo);

	DECLARE @query VARCHAR(max);
	SET @query = '
	SELECT 
		evt.LogPos,
		evt.EventId,
		evt.PlcId,
		CONVERT (NVARCHAR, DATEADD(millisecond, evt.msec, evt.DateTime), 21) AS DateTime,
		evt.n,
		evt.s,
		evt.v,
		msg.MessageNum,
		msg.MessageText,
		cod.CodeDescr 
	FROM events evt 
		LEFT JOIN messages msg ON msg.PlcId = evt.PlcId AND msg.MessageNum = evt.n 
		LEFT JOIN codes cod ON cod.CodeId = evt.s 
	WHERE 
		evt.PlcId = '+CONVERT(varchar, @PlcId)+'
		AND DateTime >= '+CHAR(39)+@DateFrom+CHAR(39)+'
		AND DateTime <= '+CHAR(39)+@DateTo+CHAR(39)+'
		AND ('+CONVERT(varchar, @HideBreaks)+'=0 OR evt.s NOT IN (16, 48))'+
		CASE @Messages 
		  WHEN '' THEN ''
		  ELSE '	AND evt.n IN ('+@Messages+')'
		END +
		CASE @MessageText 
		  WHEN '' THEN ''
		  ELSE '	AND msg.MessageText LIKE '+CHAR(39)+'%'+@MessageText+'%'+CHAR(39)
		END +
		' 
	ORDER BY EventId;
';
	EXEC (@query);

END

GO
/****** Object:  StoredProcedure [dbo].[p_GetPlcEventsOld]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetPlcEventsOld]
	@PlcId INT,
	@DateFrom VARCHAR(32),
	@DateTo VARCHAR(32)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @DateTimeFrom DATETIME;
	DECLARE @DateTimeTo DATETIME;

	SET @DateTimeFrom = CONVERT(DateTime, @DateFrom);
	SET @DateTimeTo = CONVERT(DateTime, @DateTo);

	;WITH msg AS (
	SELECT
		LogPos,
		EventId,
		PlcId,
		CONVERT (NVARCHAR, DATEADD(millisecond, msec, DateTime), 21) AS DateTime,
		n,
		v,
		LTRIM(RTRIM(LEFT(Message, 10))) AS Position, 
		LTRIM(RTRIM(SUBSTRING(Message, 11, 12))) AS State,
		CASE 
			WHEN LEN([Message]) >= 22	THEN RIGHT(RTRIM([Message]), LEN(RTRIM([Message])) - 22)
			ELSE ''
		END AS PositionDescr
		--[Message],
		--LEN([Message]) as lenmes
	FROM EventsOld
	WHERE PlcId = @PlcId
		AND DateTime >= @DateTimeFrom
		AND DateTime <= @DateTimeTo
	)
	SELECT
		LogPos,
		EventId,
		PlcId,
		DateTime,
		n,
		v,
		PositionDescr as pos,
		Position + 
		CASE
			WHEN Position <> '' AND PositionDescr <> '' THEN '  -  '
			ELSE ''
		END 
			+ PositionDescr as PositionDescr,
		State
		
	FROM msg
	ORDER BY EventId;

END;



GO
/****** Object:  StoredProcedure [dbo].[p_GetPLCSum]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vakhmintsev V.V.
-- Create date: 2014-04-01
-- Description:	Gets summary PLC event count from @DateFrom
-- =============================================
CREATE PROCEDURE [dbo].[p_GetPLCSum]
	@DateFrom DateTime
AS
BEGIN
	SET NOCOUNT ON;

	;WITH 
	TodayEvents AS (
	SELECT * FROM Events WHERE DateTime >= @DATEFROM
	), 
	
	TodayEventsOld AS (
	SELECT * FROM EventsOld WHERE DateTime >= @DATEFROM
	),
	
	TodayEventsCount AS (
	SELECT PlcId, COUNT(1) AS EventCount FROM TodayEvents GROUP BY PlcId
	),

	TodayAlarmsCount AS (
	SELECT PlcId, COUNT(1) AS AlarmCount FROM TodayEvents WHERE (s= 2 OR s= 8) GROUP BY PlcId
	),

	TodayEventsCountOld AS (
	SELECT PlcId, COUNT(1) AS EventCountOld FROM TodayEventsOld  GROUP BY PlcId
	),

	TodayAlarmsCountOld AS (
	SELECT PlcId, COUNT(1) AS AlarmCountOld FROM TodayEventsOld WHERE SUBSTRING(Message,11,7)='HH     ' OR SUBSTRING(Message,11,7)='LL     '
	GROUP BY PlcId
	),
	
	TodaySumm AS (
	SELECT 
		plc.PlcId,
		COALESCE (tec.EventCount, 0) AS TodayEventsCount,
		COALESCE (tac.AlarmCount, 0) AS TodayAlarmsCount,
		COALESCE (tec2.EventCountOld, 0) AS TodayEventsCountOld,
		COALESCE (tac2.AlarmCountOld, 0) AS TodayAlarmsCountOld
	FROM plc plc
	LEFT OUTER JOIN TodayEventsCount tec ON plc.PlcId = tec.PlcId
	LEFT OUTER JOIN TodayAlarmsCount tac ON plc.PlcId = tac.PlcId
	LEFT OUTER JOIN TodayEventsCountOld tec2 ON plc.PlcId = tec2.PlcId
	LEFT OUTER JOIN TodayAlarmsCountOld tac2 ON plc.PlcId = tac2.PlcId
	WHERE plc.ProtocolType IS NOT NULL
	),
	
	s1 AS (
	SELECT 
		fac.FactoryId,
		fac.Descr as Department,
		plc.PlcId,
		plc.[Name],
		plc.Descr,
		CONVERT (NVARCHAR, plc.LastEventDateTime, 20) AS LastEventDateTime,
		plc.ProtocolType,
		plc.href,
		CASE plc.ProtocolType 
			WHEN 1 THEN tsm.TodayEventsCount
			WHEN 2 THEN tsm.TodayEventsCountOld
		END AS EventsCount,

		CASE plc.ProtocolType 
			WHEN 1 THEN tsm.TodayAlarmsCount
			WHEN 2 THEN tsm.TodayAlarmsCountOld
		END AS AlarmsCount,
		plc.Faults,
		plc.ProtocolEnabled
	FROM plc plc
	LEFT OUTER JOIN factory fac ON fac.FactoryId = plc.FactoryId
	LEFT OUTER JOIN TodaySumm tsm ON tsm.PlcId = plc.PlcId
	WHERE plc.ProtocolType IS NOT NULL )
	
	SELECT 
		FactoryId,
		Department,
		PlcId,
		Name,
		CASE WHEN PlcId = 10501 THEN 'Комбикомпрессор К1-2 и гиперкомпрессор К3'
			ELSE Descr
		END AS Descr,
		LastEventDateTime,
		ProtocolType,
		href,
		EventsCount,
		AlarmsCount,
		COALESCE (Faults, 0) AS Faults,
		ProtocolEnabled
	FROM s1
	ORDER BY FactoryId, Descr;
	
	
END


/*
GO;

EXEC [p_GetPLCSum] '2015-08-28';
*/
GO
/****** Object:  StoredProcedure [dbo].[p_GetRSViewStation]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetRSViewStation]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		wst.Id as Id,
		wst.Factory_Id as FactoryId,
		wst.Ip,
		wst.WorkstationName,
		prj.ProjectName,
		prj.Descr
	FROM Workstation wst
	INNER JOIN Project prj ON prj.Id = wst.Project_Id
	WHERE wst.Enable = 1 
		AND IDE LIKE '%RSView%'
		AND prj.Path IS NOT NULL 
		AND prj.Path <>''
	ORDER BY wst.Factory_Id, wst.Ip

END

GO
/****** Object:  StoredProcedure [dbo].[p_GetRSViewTag]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetRSViewTag] (
	@ProjectName NVARCHAR(255)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT *
	FROM RSView.dbo.DevAddress
	WHERE ProjectName LIKE @ProjectName

END

GO
/****** Object:  StoredProcedure [dbo].[p_GetWorkStation]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetWorkStation]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
		wst.Id as Id,
		wst.Factory_Id as FactoryId,
		wst.Ip,
		wst.Number,
		wst.WorkstationName,
		prj.ProjectName,
		prj.Descr,
		prj.IDE,
		wst.Username,
		wst.Password,
		wst.UseMstsc
	FROM Workstation wst
	LEFT JOIN Project prj ON prj.Id = wst.Project_Id
	ORDER BY wst.Factory_Id, wst.Ip

END




GO
/****** Object:  StoredProcedure [dbo].[p_MakeDataCacheForCNIK]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_MakeDataCacheForCNIK] (
@Date DATETIME
)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @DateTo DATETIME;
	SET @DateTo = DATEADD(DAY, 1, @Date);
	SET @DateTo = DATEADD(HOUR, 2, @DateTo);
	PRINT @DateTo;

	DELETE FROM ArchiveCache;
	
	INSERT INTO ArchiveCache (TagId, Value, DateTime, ResultId)
	SELECT TagId, Value, DateTime, ResultId FROM Archive WHERE DateTime >= @Date AND DateTime < @DateTo

END

GO
/****** Object:  StoredProcedure [dbo].[SetMessage]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SetMessage]
(
	@PlcId INT,
	@MessageNum INT,
	@MessageText NVARCHAR (255)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF EXISTS(SELECT 1 FROM Messages WHERE PlcId = @PlcId AND MessageNum = @MessageNum) 
	BEGIN
		UPDATE Messages SET MessageText = @MessageText WHERE PlcId = @PlcId AND MessageNum = @MessageNum
	END 
	ELSE 
	BEGIN
		INSERT INTO Messages(PlcID, MessageNum, MessageText) VALUES(@PlcId, @MessageNum, @MessageText)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[UpsertMessage]    Script Date: 30.12.2016 19:32:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[UpsertMessage] 	
	-- <@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	@PlcId INT,
	@MessageNum INT,
	@MessageText NVARCHAR (255),
	@MessageGroup smallint = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF EXISTS(SELECT 1 FROM Messages WHERE PlcId = @PlcId AND MessageNum = @MessageNum) 
	BEGIN
		UPDATE Messages SET MessageText=@MessageText, MessageGroup=@MessageGroup WHERE PlcId = @PlcId AND MessageNum = @MessageNum;
	END 
	ELSE 
	BEGIN
		INSERT INTO Messages(PlcId, MessageNum, MessageText, MessageGroup) VALUES(@PlcId, @MessageNum, @MessageText, @MessageGroup);
	END
	
	
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mpt.events_pc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Events_Pc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mpt.pceventignorewords' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PcEventIgnoreWords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер BiBo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLC', @level2type=N'COLUMN',@level2name=N'PositionNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mpt.project' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mpt.workstation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Workstation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[21] 4[19] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PLC"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 281
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3270
         Width = 1500
         Width = 2550
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Plc_TO_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Plc_TO_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Workstation"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 300
               Right = 204
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Project"
            Begin Extent = 
               Top = 6
               Left = 242
               Bottom = 266
               Right = 394
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1980
         Alias = 900
         Table = 1545
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Workstation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Workstation'
GO
