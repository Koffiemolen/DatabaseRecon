USE [Automate11]
GO
/****** Object:  Table [dbo].[agentconstructs]    Script Date: 30-10-2023 10:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agentconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[IDWhenLastConnected] [nvarchar](38) NULL,
	[VersionWhenLastConnected] [nvarchar](16) NULL,
	[MachineNameWhenLastConnected] [nvarchar](128) NULL,
	[AgentType] [int] NULL,
	[Blocked] [smallint] NULL,
	[AgentUpgradeStep] [int] NULL,
	[SubstitutionID] [nvarchar](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[agentgroupconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agentgroupconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[AgentIDs] [ntext] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[agentpropertiesconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agentpropertiesconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[DefaultRunAsUserName] [nvarchar](512) NULL,
	[DefaultRunAsPassword] [nvarchar](512) NULL,
	[DefaultRunAsDomain] [nvarchar](128) NULL,
	[LogonScript] [nvarchar](128) NULL,
	[UnlockScript] [nvarchar](128) NULL,
	[LogonScriptKeystrokeDelay] [int] NULL,
	[EnableSAS] [smallint] NULL,
	[DefaultUserPropertiesSpecified] [smallint] NULL,
	[ShowRunningTaskWindow] [smallint] NULL,
	[RunningTaskWindowWithTitleBar] [smallint] NULL,
	[RunningTaskOnTop] [smallint] NULL,
	[RunningTaskWindowTransparent] [smallint] NULL,
	[UseInterruptHotkey] [smallint] NULL,
	[InterruptHotkey] [nvarchar](128) NULL,
	[ShowTrayIcon] [int] NULL,
	[ShowTrayIconMenu] [smallint] NULL,
	[IndicatorsPropertiesSpecified] [smallint] NULL,
	[MIBLocation] [nvarchar](128) NULL,
	[SNMPTrapPort] [int] NULL,
	[SNMPPropertiesSpecified] [smallint] NULL,
	[AgentPort] [int] NULL,
	[TaskCacheFilePath] [nvarchar](128) NULL,
	[DisableForegroundTimeout] [smallint] NULL,
	[EventMonitorAutoStartMode] [int] NULL,
	[TerminalServicesUser] [nvarchar](128) NULL,
	[AgentUpgradeTimeout] [int] NULL,
	[SystemPropertiesSpecified] [smallint] NULL,
	[SMTPServer] [nvarchar](128) NULL,
	[SMTPPort] [int] NULL,
	[SMTPUser] [nvarchar](512) NULL,
	[SMTPPassword] [nvarchar](512) NULL,
	[SMTPPropertiesSpecified] [smallint] NULL,
	[SocksType] [int] NULL,
	[ProxyHost] [nvarchar](128) NULL,
	[ProxyPort] [int] NULL,
	[ProxyUserID] [nvarchar](512) NULL,
	[ProxyPassword] [nvarchar](512) NULL,
	[ProxyPropertiesSpecified] [smallint] NULL,
	[UseLowestCompletionState] [smallint] NULL,
	[LowestCompletionState] [int] NULL,
	[StagingPropertiesSpecified] [smallint] NULL,
	[MaxRunningTasks] [int] NULL,
	[TaskTimeout] [int] NULL,
	[LoadManagementPropertiesSpecified] [smallint] NULL,
	[TaskIsolation] [int] NULL,
	[TaskIsolationPropertiesSpecified] [smallint] NULL,
	[ConstantsXML] [ntext] NULL,
	[SqlConnectionConstantsXML] [ntext] NULL,
	[PrelogonKeystrokes] [nvarchar](1024) NULL,
	[MonitorAgentConnection] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[apikeys]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[apikeys](
	[ID] [nvarchar](38) NOT NULL,
	[Key1] [nvarchar](512) NOT NULL,
	[UserID] [nvarchar](38) NULL,
	[IsEnabled] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[apipermissions]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[apipermissions](
	[ID] [nvarchar](38) NOT NULL,
	[GroupID] [nvarchar](38) NULL,
	[WorkflowsListPermission] [smallint] NULL,
	[TasksListPermission] [smallint] NULL,
	[ProcessesListPermission] [smallint] NULL,
	[TriggersListPermission] [smallint] NULL,
	[FoldersListPermission] [smallint] NULL,
	[UsersListPermission] [smallint] NULL,
	[UserGroupsListPermission] [smallint] NULL,
	[AgentsListPermission] [smallint] NULL,
	[AgentGroupsListPermission] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[automateconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[automateconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[ResourceName] [nvarchar](256) NULL,
	[ParentID] [nvarchar](38) NULL,
	[ResourceType] [int] NOT NULL,
	[CompletionState] [int] NOT NULL,
	[Notes] [ntext] NULL,
	[CreatedBy] [nvarchar](38) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
	[Version] [int] NOT NULL,
	[VersionDate] [datetime] NOT NULL,
	[Empty] [smallint] NOT NULL,
	[Enabled] [smallint] NOT NULL,
	[Removed] [smallint] NOT NULL,
	[ResultCode] [int] NULL,
	[ResultText] [ntext] NULL,
	[StartedOn] [datetime] NULL,
	[EndedOn] [datetime] NULL,
	[LockedBy] [nvarchar](38) NULL,
	[SuccessCount] [int] NULL,
	[FailureCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bpasystem]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bpasystem](
	[ID] [nvarchar](38) NOT NULL,
	[SchemaVersion] [nvarchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[constants]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[constants](
	[ID] [nvarchar](38) NOT NULL,
	[ParentID] [nvarchar](38) NOT NULL,
	[DataType] [int] NULL,
	[Name] [nvarchar](128) NULL,
	[Value] [ntext] NULL,
	[Comment] [ntext] NULL,
	[IsEnabled] [smallint] NULL,
	[IsEncrypted] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[credentials]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[credentials](
	[ID] [nvarchar](38) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[Value] [nvarchar](4000) NULL,
	[IsEnabled] [smallint] NULL,
	[Comment] [nvarchar](4000) NULL,
	[AllowedUserIDs] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[databasetriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[databasetriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[DatabaseType] [int] NULL,
	[Server] [nvarchar](128) NULL,
	[Username] [nvarchar](512) NULL,
	[Password] [nvarchar](512) NULL,
	[DatabaseToMonitor] [nvarchar](128) NULL,
	[TableToMonitor] [nvarchar](128) NULL,
	[NotificationPort] [int] NULL,
	[OnInsert] [smallint] NULL,
	[OnDelete] [smallint] NULL,
	[OnUpdate] [smallint] NULL,
	[OnCreate] [smallint] NULL,
	[OnDrop] [smallint] NULL,
	[OnAlter] [smallint] NULL,
	[UseWindowsAuth] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emailfilters]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emailfilters](
	[ID] [nvarchar](38) NOT NULL,
	[EmailTriggerID] [nvarchar](38) NOT NULL,
	[FieldName] [nvarchar](256) NULL,
	[FieldValue] [nvarchar](256) NULL,
	[Operator] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emailtriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emailtriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[ConnectionType] [int] NULL,
	[EmailAddress] [nvarchar](256) NULL,
	[ProtocolType] [int] NULL,
	[HttpProtocol] [int] NULL,
	[UseHTTP] [smallint] NULL,
	[Server] [nvarchar](256) NULL,
	[Port] [nvarchar](256) NULL,
	[Security] [int] NULL,
	[Certificate] [nvarchar](256) NULL,
	[CertificatePath] [nvarchar](256) NULL,
	[Passphrase] [nvarchar](512) NULL,
	[IgnoreCertificate] [smallint] NULL,
	[WebDavAuthentication] [int] NULL,
	[MailBoxURL] [nvarchar](256) NULL,
	[HasMailBoxURL] [smallint] NULL,
	[AuthType] [nvarchar](256) NULL,
	[UserName] [nvarchar](512) NULL,
	[Password] [nvarchar](512) NULL,
	[DomainName] [nvarchar](256) NULL,
	[UseNTLM] [smallint] NULL,
	[UseForm] [smallint] NULL,
	[AutoDiscover] [smallint] NULL,
	[EWSUseDefault] [smallint] NULL,
	[ExternalEWSUrl] [nvarchar](256) NULL,
	[ExchangeVersion] [nvarchar](256) NULL,
	[AuthenticationType] [nvarchar](256) NULL,
	[AllowRedirection] [smallint] NULL,
	[CurrentFolder] [nvarchar](256) NULL,
	[Impersonate] [smallint] NULL,
	[ProxyType] [int] NULL,
	[ProxyServer] [nvarchar](256) NULL,
	[ProxyPort] [nvarchar](256) NULL,
	[ProxyUserName] [nvarchar](512) NULL,
	[ProxyPassword] [nvarchar](512) NULL,
	[UseAutoDiscovery] [smallint] NULL,
	[IgnoreServerCertificate] [smallint] NULL,
	[UserAgent] [nvarchar](256) NULL,
	[Pollinginterval] [int] NULL,
	[EmailFilterType] [int] NULL,
	[TenantId] [nvarchar](256) NULL,
	[ClientId] [nvarchar](256) NULL,
	[ClientSecret] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eventlogtriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eventlogtriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[LogType] [nvarchar](128) NULL,
	[EventSource] [nvarchar](128) NULL,
	[EventType] [int] NULL,
	[EventCategory] [nvarchar](128) NULL,
	[EventDescription] [nvarchar](1024) NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[excludeschedules]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[excludeschedules](
	[ID] [nvarchar](38) NOT NULL,
	[ConstructID] [nvarchar](38) NULL,
	[ScheduleType] [int] NULL,
	[Day] [nvarchar](64) NULL,
	[StartTime] [nvarchar](128) NULL,
	[EndTime] [nvarchar](128) NULL,
	[HolidayCountry] [nvarchar](64) NULL,
	[Frequency] [nvarchar](64) NULL,
	[Scalar] [int] NULL,
	[Weeks] [nvarchar](512) NULL,
	[Months] [nvarchar](512) NULL,
	[RemoveID] [nvarchar](38) NULL,
	[SourceType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[executionevents]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[executionevents](
	[ID] [nvarchar](38) NOT NULL,
	[ConstructID] [nvarchar](38) NOT NULL,
	[StartDateTime] [datetime] NOT NULL,
	[EndDateTime] [datetime] NULL,
	[ResultCode] [int] NOT NULL,
	[ResultText] [ntext] NOT NULL,
	[InstanceID] [nvarchar](38) NULL,
	[AgentID] [nvarchar](38) NULL,
	[RowID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [nvarchar](38) NULL,
	[WorkflowInstanceID] [nvarchar](38) NULL,
	[UserID] [nvarchar](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[filetriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filetriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[Folder] [nvarchar](1024) NULL,
	[SubFolders] [smallint] NULL,
	[WaitForAccess] [smallint] NULL,
	[PollingInterval] [int] NULL,
	[FileAdded] [smallint] NULL,
	[FileRemoved] [smallint] NULL,
	[FileRenamed] [smallint] NULL,
	[FileModified] [smallint] NULL,
	[FileCount] [int] NULL,
	[FileSize] [int] NULL,
	[FolderSize] [int] NULL,
	[Include] [nvarchar](1024) NULL,
	[Exclude] [nvarchar](1024) NULL,
	[UserMode] [int] NULL,
	[Username] [nvarchar](512) NULL,
	[Password] [nvarchar](512) NULL,
	[Domain] [nvarchar](128) NULL,
	[FolderAdded] [smallint] NULL,
	[FolderRemoved] [smallint] NULL,
	[FolderRenamed] [smallint] NULL,
	[FolderModified] [smallint] NULL,
	[FolderCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[folderconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[folderconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[generalevents]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[generalevents](
	[ID] [nvarchar](38) NOT NULL,
	[EventDateTime] [datetime] NOT NULL,
	[EventType] [int] NOT NULL,
	[EventText] [ntext] NULL,
	[UserID] [nvarchar](38) NULL,
	[PrimaryConstructID] [nvarchar](38) NULL,
	[Data] [ntext] NULL,
	[StatusType] [int] NULL,
	[RowID] [int] IDENTITY(1,1) NOT NULL,
	[SessionID] [nvarchar](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idletriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idletriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[Delay] [int] NULL,
	[TimeMeasure] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instances]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instances](
	[RowID] [int] IDENTITY(1,1) NOT NULL,
	[ID] [nvarchar](38) NOT NULL,
	[InstanceID] [nvarchar](38) NULL,
	[TransactionID] [nvarchar](38) NULL,
	[WorkflowInstanceID] [nvarchar](38) NULL,
	[ConstructID] [nvarchar](38) NULL,
	[ConstructType] [int] NULL,
	[ConstructName] [nvarchar](256) NULL,
	[ConstructPath] [nvarchar](1024) NULL,
	[AgentID] [nvarchar](38) NULL,
	[AgentName] [nvarchar](256) NULL,
	[AgentPath] [nvarchar](1024) NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[Duration] [bigint] NULL,
	[LastChanged] [datetime] NULL,
	[Status] [int] NOT NULL,
	[ResultCode] [int] NOT NULL,
	[ResultText] [ntext] NOT NULL,
	[Scheduled] [smallint] NOT NULL,
	[Reactive] [smallint] NOT NULL,
	[UserID] [nvarchar](38) NULL,
	[UserName] [nvarchar](256) NULL,
	[UserPath] [nvarchar](1024) NULL,
	[TriggerID] [nvarchar](38) NULL,
	[TriggerType] [int] NOT NULL,
	[TriggerName] [nvarchar](256) NULL,
	[TriggerPath] [nvarchar](1024) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[itempermissions]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itempermissions](
	[ID] [nvarchar](38) NOT NULL,
	[ConstructID] [nvarchar](38) NULL,
	[GroupID] [nvarchar](38) NULL,
	[CreatePermission] [smallint] NULL,
	[ReadPermission] [smallint] NULL,
	[EditPermission] [smallint] NULL,
	[DeletePermission] [smallint] NULL,
	[MovePermission] [smallint] NULL,
	[EnablePermission] [smallint] NULL,
	[RunPermission] [smallint] NULL,
	[StopPermission] [smallint] NULL,
	[ImportPermission] [smallint] NULL,
	[ExportPermission] [smallint] NULL,
	[StagingPermission] [smallint] NULL,
	[AssignPermission] [smallint] NULL,
	[SecurityPermission] [smallint] NULL,
	[ResurrectPermission] [smallint] NULL,
	[ResumePermission] [smallint] NULL,
	[RunFromHerePermission] [smallint] NULL,
	[LockPermission] [smallint] NULL,
	[UpgradePermission] [smallint] NULL,
	[DeleteRevisionPermission] [smallint] NULL,
	[RestoreRevisionPermission] [smallint] NULL,
	[UpdateRevisionPermission] [smallint] NULL,
	[DeleteRecycleBinPermission] [smallint] NULL,
	[RestoreRecycleBinPermission] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[keytriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[keytriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[KeyType] [int] NULL,
	[KeyCombo] [nvarchar](32) NULL,
	[EraseText] [smallint] NULL,
	[PassThrough] [smallint] NULL,
	[Process] [nvarchar](1024) NULL,
	[Foreground] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notifications](
	[ID] [nvarchar](38) NOT NULL,
	[ParentID] [nvarchar](38) NULL,
	[EmailProtocol] [int] NULL,
	[Server] [nvarchar](256) NULL,
	[UserName] [nvarchar](512) NULL,
	[Password] [nvarchar](512) NULL,
	[DomainName] [nvarchar](128) NULL,
	[AuthenticationType] [nvarchar](128) NULL,
	[UserAgent] [nvarchar](128) NULL,
	[Timeout] [int] NULL,
	[IgnoreServerCertificate] [smallint] NULL,
	[Port] [int] NULL,
	[Certificate] [nvarchar](256) NULL,
	[Passphrase] [nvarchar](512) NULL,
	[Security] [int] NULL,
	[DisableChunkingPipelining] [smallint] NULL,
	[Protocol] [int] NULL,
	[EmailAddress] [nvarchar](128) NULL,
	[Url] [nvarchar](256) NULL,
	[UseAutoDiscovery] [smallint] NULL,
	[Version] [int] NULL,
	[ProxyServer] [nvarchar](128) NULL,
	[ProxyType] [int] NULL,
	[ProxyUsername] [nvarchar](512) NULL,
	[ProxyPassword] [nvarchar](512) NULL,
	[ProxyPort] [int] NULL,
	[TenantID] [nvarchar](256) NULL,
	[ClientID] [nvarchar](256) NULL,
	[ClientSecret] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[performancetriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[performancetriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[CategoryName] [nvarchar](1024) NULL,
	[CounterName] [nvarchar](1024) NULL,
	[InstanceName] [nvarchar](1024) NULL,
	[MachineName] [nvarchar](1024) NULL,
	[Operator] [int] NULL,
	[Amount] [int] NULL,
	[TimePeriod] [int] NULL,
	[TimePeriodUnit] [int] NULL,
	[AnyProcessInApp] [smallint] NULL,
	[AnyThreadInProcess] [smallint] NULL,
	[AnyThreadInstanceInApp] [smallint] NULL,
	[TimePeriodString] [nvarchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[previouspasswords]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[previouspasswords](
	[ID] [nvarchar](38) NOT NULL,
	[UserID] [nvarchar](38) NOT NULL,
	[Password] [nvarchar](512) NOT NULL,
	[ResetDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[processconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[processconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[CommandLine] [ntext] NULL,
	[EnvironmentVariables] [nvarchar](1024) NULL,
	[WorkingDirectory] [nvarchar](1024) NULL,
	[RunProcessAs] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[processtriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[processtriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[Action] [int] NULL,
	[ProcessName] [nvarchar](1024) NULL,
	[Exclude] [nvarchar](1024) NULL,
	[TriggerOnce] [smallint] NULL,
	[Started] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scheduletriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scheduletriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[ScheduleType] [int] NULL,
	[Possible] [smallint] NULL,
	[NextLaunchDate] [nvarchar](128) NULL,
	[Frequency] [nvarchar](16) NULL,
	[MonthInterval] [int] NULL,
	[Measure] [int] NULL,
	[StartTime] [nvarchar](128) NULL,
	[OnTaskLate] [int] NULL,
	[Reschedule] [int] NULL,
	[EndTime] [nvarchar](128) NULL,
	[LastLaunchDate] [nvarchar](128) NULL,
	[Days] [nvarchar](1024) NULL,
	[Months] [nvarchar](1024) NULL,
	[Holidays] [nvarchar](1024) NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[serverproperties]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[serverproperties](
	[ID] [nvarchar](38) NOT NULL,
	[UseIPFilters] [smallint] NULL,
	[BlockListType] [int] NULL,
	[BlockedIPList] [ntext] NULL,
	[DefaultIPFiltersAllow] [smallint] NULL,
	[UseSSL] [smallint] NULL,
	[CertStoreLocation] [int] NULL,
	[CertStoreName] [int] NULL,
	[CertSearchType] [int] NULL,
	[CertSearchValue] [nvarchar](512) NULL,
	[SMTPServer] [nvarchar](256) NULL,
	[SMTPPort] [int] NULL,
	[SMTPUser] [nvarchar](512) NULL,
	[SMTPPassword] [nvarchar](512) NULL,
	[ErrorNotifyEmailToAddress] [nvarchar](256) NULL,
	[ErrorNotifyEmailFromAddress] [nvarchar](256) NULL,
	[ErrorRunTaskName] [nvarchar](128) NULL,
	[UseLowestCompletionState] [smallint] NULL,
	[LowestCompletionState] [int] NULL,
	[TrimTimeFrame] [int] NULL,
	[TrimCount] [int] NULL,
	[InstancesTrimTimeFrame] [int] NULL,
	[InstancesTrimCount] [int] NULL,
	[TaskStepsTrimTimeFrame] [int] NULL,
	[TaskStepsTrimCount] [int] NULL,
	[MaxRunningWorkflows] [int] NULL,
	[WorkflowDelayAfterStartup] [int] NULL,
	[DefaultStaging] [int] NULL,
	[Versioned] [smallint] NULL,
	[VersionBehavior] [int] NULL,
	[VersionTrimValue] [int] NULL,
	[GlobalTriggering] [smallint] NULL,
	[EnableLockout] [smallint] NULL,
	[LockoutPeriod] [int] NULL,
	[AttemptPeriod] [int] NULL,
	[AttemptCount] [int] NULL,
	[EnableTimeout] [smallint] NULL,
	[TimeoutPeriod] [int] NULL,
	[TimeoutUserIDs] [ntext] NULL,
	[DisableConcurrentLogin] [smallint] NULL,
	[EnableAPI] [smallint] NULL,
	[EnableStepLogging] [smallint] NULL,
	[AuditEventsTrimTimeFrame] [int] NULL,
	[AuditEventsTrimCount] [int] NULL,
	[PCMMinimumLength] [int] NULL,
	[PCMAllowLowercase] [smallint] NULL,
	[PCMMinimumLowercase] [int] NULL,
	[PCMAllowUppercase] [smallint] NULL,
	[PCMMinimumUppercase] [int] NULL,
	[PCMAllowNumbers] [smallint] NULL,
	[PCMMinimumNumbers] [int] NULL,
	[PCMAllowSpecCharacters] [smallint] NULL,
	[PCMMinimumSpecCharacters] [int] NULL,
	[PCMEnablePasswordExpiration] [smallint] NULL,
	[PCMPasswordExpirationPeriod] [int] NULL,
	[PCMEnablePasswordHistory] [smallint] NULL,
	[PCMEnforcePasswordHistory] [int] NULL,
	[EnableCustomActions] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[servicetriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servicetriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[Action] [int] NULL,
	[ServiceName] [nvarchar](1024) NULL,
	[Exclude] [nvarchar](1024) NULL,
	[Started] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sharepointtriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sharepointtriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[SiteURL] [nvarchar](255) NOT NULL,
	[Scope] [int] NOT NULL,
	[List] [nvarchar](255) NULL,
	[UserMode] [int] NULL,
	[UserName] [nvarchar](512) NULL,
	[Password] [nvarchar](512) NULL,
	[Domain] [nvarchar](255) NULL,
	[ItemAdded] [smallint] NULL,
	[ItemUpdated] [smallint] NULL,
	[ItemDeleted] [smallint] NULL,
	[ItemCheckedIn] [smallint] NULL,
	[ItemCheckedOut] [smallint] NULL,
	[ItemUnCheckedOut] [smallint] NULL,
	[ItemFileMoved] [smallint] NULL,
	[ItemAttachmentAdded] [smallint] NULL,
	[ItemAttachmentDeleted] [smallint] NULL,
	[FieldAdded] [smallint] NULL,
	[FieldUpdated] [smallint] NULL,
	[FieldDeleted] [smallint] NULL,
	[EmailReceived] [smallint] NULL,
	[WorkflowStarted] [smallint] NULL,
	[WorkflowPostponed] [smallint] NULL,
	[WorkflowCompleted] [smallint] NULL,
	[ListAdded] [smallint] NULL,
	[ListDeleted] [smallint] NULL,
	[GroupAdded] [smallint] NULL,
	[GroupUpdated] [smallint] NULL,
	[GroupDeleted] [smallint] NULL,
	[GroupUserAdded] [smallint] NULL,
	[GroupUserDeleted] [smallint] NULL,
	[RoleDefinitionAdded] [smallint] NULL,
	[RoleDefinitionUpdated] [smallint] NULL,
	[RoleDefinitionDeleted] [smallint] NULL,
	[RoleAssignmentAdded] [smallint] NULL,
	[RoleAssignmentDeleted] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[snapshots]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[snapshots](
	[ID] [nvarchar](38) NOT NULL,
	[ResourceID] [nvarchar](38) NULL,
	[ResourceName] [nvarchar](256) NULL,
	[ResourceParentID] [nvarchar](38) NULL,
	[ResourceType] [int] NULL,
	[ArchivedOn] [datetime] NULL,
	[ArchivedBy] [nvarchar](38) NULL,
	[Version] [int] NULL,
	[Snapshot] [ntext] NULL,
	[Comments] [ntext] NULL,
	[Successes] [int] NULL,
	[Failures] [int] NULL,
	[RecycleBin] [smallint] NULL,
	[LockedBy] [nvarchar](38) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[snmpcredentials]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[snmpcredentials](
	[ID] [nvarchar](38) NOT NULL,
	[SNMPTriggerID] [nvarchar](38) NULL,
	[Username] [nvarchar](512) NULL,
	[AuthenticationPassword] [nvarchar](512) NULL,
	[PrivacyPassword] [nvarchar](512) NULL,
	[EncryptionAlgorithm] [int] NULL,
	[AuthenticationAlgorithm] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[snmptriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[snmptriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[IPStart] [nvarchar](64) NULL,
	[IPEnd] [nvarchar](64) NULL,
	[Community] [nvarchar](256) NULL,
	[Enterprise] [nvarchar](256) NULL,
	[GenericType] [int] NULL,
	[SpecificType] [nvarchar](64) NULL,
	[OIDStringNotation] [smallint] NULL,
	[TimeTickStringNotation] [smallint] NULL,
	[AcceptUnathenticatedTrap] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[startuptriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[startuptriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[ServiceStarts] [smallint] NULL,
	[Users] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[systempermissions]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[systempermissions](
	[ID] [nvarchar](38) NOT NULL,
	[GroupID] [nvarchar](38) NULL,
	[DeployPermission] [smallint] NULL,
	[ViewReportsPermission] [smallint] NULL,
	[ViewPreferencesPermission] [smallint] NULL,
	[EditPreferencesPermission] [smallint] NULL,
	[ViewServerSettingsPermission] [smallint] NULL,
	[EditServerSettingsPermission] [smallint] NULL,
	[ViewDefaultPropertiesPermission] [smallint] NULL,
	[EditDefaultPropertiesPermission] [smallint] NULL,
	[ViewLicensingPermission] [smallint] NULL,
	[EditLicensingPermission] [smallint] NULL,
	[ToggleTriggeringPermission] [smallint] NULL,
	[ViewDashboardPermission] [smallint] NULL,
	[EditDashboardPermission] [smallint] NULL,
	[ViewCalendarPermission] [smallint] NULL,
	[ViewRevisionManagementPermission] [smallint] NULL,
	[EditRevisionManagementPermission] [smallint] NULL,
	[ViewRecycleBinPermission] [smallint] NULL,
	[ViewCredentialsPermission] [smallint] NULL,
	[EditCredentialsPermission] [smallint] NULL,
	[ViewVaultConnectionsPermission] [smallint] NULL,
	[EditVaultConnectionsPermission] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taskconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taskconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[AML] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taskpropertiesconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taskpropertiesconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[OnLogged] [int] NULL,
	[OnLogoff] [int] NULL,
	[OnLocked] [int] NULL,
	[UseLogonDefault] [smallint] NULL,
	[LogonUsername] [nvarchar](512) NULL,
	[LogonPassword] [nvarchar](512) NULL,
	[LogonDomain] [nvarchar](128) NULL,
	[RunAsElevated] [smallint] NULL,
	[LogonPropertiesSpecified] [smallint] NULL,
	[ConcurrencyType] [int] NULL,
	[PriorityAction] [int] NULL,
	[PriorityWaitTimeOut] [int] NULL,
	[TaskFailureAction] [int] NULL,
	[PriorityPropertiesSpecified] [smallint] NULL,
	[ErrorNotifyEmailToAddress] [nvarchar](128) NULL,
	[ErrorNotifyEmailFromAddress] [nvarchar](128) NULL,
	[ErrorRunTaskName] [nvarchar](128) NULL,
	[ErrorNotificationPropertiesSpecified] [smallint] NULL,
	[TaskExecutionSpeed] [int] NULL,
	[CanStopTask] [smallint] NULL,
	[ExecutionPropertiesSpecified] [smallint] NULL,
	[IsolationOverride] [int] NULL,
	[IsolationPropertiesSpecified] [smallint] NULL,
	[MaxTaskInstances] [int] NULL,
	[TaskTimeout] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taskstepevents]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taskstepevents](
	[RowID] [int] IDENTITY(1,1) NOT NULL,
	[ID] [nvarchar](38) NOT NULL,
	[InstanceID] [nvarchar](38) NULL,
	[AgentID] [nvarchar](38) NULL,
	[ConstructID] [nvarchar](38) NULL,
	[LastChanged] [datetime] NULL,
	[FunctionName] [nvarchar](1024) NULL,
	[StepDescription] [nvarchar](1024) NULL,
	[StepNumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[triggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[triggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[TriggerType] [int] NOT NULL,
	[Wait] [smallint] NOT NULL,
	[IgnoreExistingCondition] [smallint] NOT NULL,
	[Timeout] [int] NOT NULL,
	[TimeoutUnit] [int] NOT NULL,
	[TriggerAfter] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[Username] [nvarchar](512) NOT NULL,
	[Password] [nvarchar](512) NOT NULL,
	[RoleType] [int] NOT NULL,
	[WorkflowFolderID] [nvarchar](38) NULL,
	[TaskFolderID] [nvarchar](38) NULL,
	[ConditionFolderID] [nvarchar](38) NULL,
	[ProcessFolderID] [nvarchar](38) NULL,
	[LockedOutOn] [datetime] NULL,
	[ForceReset] [smallint] NULL,
	[PasswordResetDate] [datetime] NULL,
	[Salt] [nvarchar](512) NULL,
	[AuthProvider] [int] NULL,
	[Domain] [nvarchar](512) NULL,
	[UseSecureConnection] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usergroupconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usergroupconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[UserIDs] [ntext] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[variables]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[variables](
	[ID] [nvarchar](38) NOT NULL,
	[WorkflowID] [nvarchar](38) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[DataType] [int] NULL,
	[VariableType] [int] NULL,
	[InitialValue] [ntext] NULL,
	[CurrentValue] [ntext] NULL,
	[Description] [nvarchar](256) NULL,
	[IsPrivate] [smallint] NULL,
	[IsParameter] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vaultconnections]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vaultconnections](
	[ID] [nvarchar](38) NOT NULL,
	[VaultType] [int] NULL,
	[VaultEndPoint] [nvarchar](4000) NULL,
	[AuthorizationInformation] [nvarchar](4000) NULL,
	[Name] [nvarchar](128) NULL,
	[IsEnabled] [smallint] NULL,
	[Comment] [nvarchar](4000) NULL,
	[AllowedUserIDs] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[windowcontrols]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[windowcontrols](
	[ID] [nvarchar](38) NOT NULL,
	[WindowTriggerID] [nvarchar](38) NOT NULL,
	[Name] [nvarchar](512) NULL,
	[Class] [nvarchar](512) NULL,
	[Value] [nvarchar](512) NULL,
	[Type] [nvarchar](512) NULL,
	[Xpos] [nvarchar](16) NULL,
	[Ypos] [nvarchar](16) NULL,
	[CheckName] [smallint] NULL,
	[CheckClass] [smallint] NULL,
	[CheckValue] [smallint] NULL,
	[CheckType] [smallint] NULL,
	[CheckPosition] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[windowtriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[windowtriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[Action] [int] NULL,
	[Delay] [int] NULL,
	[Title] [nvarchar](512) NULL,
	[Class] [nvarchar](512) NULL,
	[Handle] [int] NULL,
	[HoldFocus] [smallint] NULL,
	[TriggerOnce] [smallint] NULL,
	[ChildWindow] [smallint] NULL,
	[ContainsControls] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wmitriggerconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wmitriggerconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[MachineName] [nvarchar](512) NULL,
	[Namespace] [nvarchar](1024) NULL,
	[WQLQuery] [nvarchar](2000) NULL,
	[UserName] [nvarchar](512) NULL,
	[UserPassword] [nvarchar](512) NULL,
	[QueryInterval] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workflowconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workflowconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[ZoomFactor] [decimal](18, 0) NULL,
	[LinkType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workflowitemconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workflowitemconstructs](
	[ID] [nvarchar](38) NOT NULL,
	[WorkflowID] [nvarchar](38) NOT NULL,
	[Enabled] [smallint] NULL,
	[UseLabel] [smallint] NULL,
	[Label] [nvarchar](128) NULL,
	[HorizontalPosition] [decimal](18, 0) NULL,
	[VerticalPosition] [decimal](18, 0) NULL,
	[Height] [decimal](18, 0) NULL,
	[Width] [decimal](18, 0) NULL,
	[ItemType] [int] NULL,
	[ConstructID] [nvarchar](38) NULL,
	[ConstructType] [int] NULL,
	[AgentID] [nvarchar](38) NULL,
	[TriggerType] [int] NULL,
	[Expression] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workflowitempropertiesconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workflowitempropertiesconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[OnErrorPropertiesSpecified] [smallint] NULL,
	[OnBeforeErrorAction] [int] NULL,
	[BeforeRetryCount] [int] NULL,
	[BeforeRetryDelay] [int] NULL,
	[OnErrorAction] [int] NULL,
	[FailWorkflow] [smallint] NULL,
	[ErrorOnUnhandledFailure] [smallint] NULL,
	[ErrorCausesPropertiesSpecified] [smallint] NULL,
	[TaskDisabled] [smallint] NULL,
	[TaskUnbuilt] [smallint] NULL,
	[TaskRuntimeFailure] [smallint] NULL,
	[TaskTimedOut] [smallint] NULL,
	[TaskStopped] [smallint] NULL,
	[TaskAborted] [smallint] NULL,
	[TaskExcluded] [smallint] NULL,
	[TriggerDisabled] [smallint] NULL,
	[TriggerUnbuilt] [smallint] NULL,
	[TriggerEvaluationFailure] [smallint] NULL,
	[TriggerTimedOut] [smallint] NULL,
	[TriggerStopped] [smallint] NULL,
	[TriggerExcluded] [smallint] NULL,
	[AgentDisabled] [smallint] NULL,
	[AgentUnavailable] [smallint] NULL,
	[AgentStaging] [smallint] NULL,
	[AgentIncompatible] [smallint] NULL,
	[AgentExcluded] [smallint] NULL,
	[AgentGroupDisabled] [smallint] NULL,
	[AgentGroupEmpty] [smallint] NULL,
	[AgentGroupSubsetErrors] [int] NULL,
	[ErrorsCount] [int] NULL,
	[ErrorsPercentage] [int] NULL,
	[SubsetAgentDisabled] [smallint] NULL,
	[SubsetAgentUnavailable] [smallint] NULL,
	[SubsetAgentStaging] [smallint] NULL,
	[SubsetAgentIncompatible] [smallint] NULL,
	[SubsetAgentExcluded] [smallint] NULL,
	[DistributionPropertiesSpecified] [smallint] NULL,
	[DistributionType] [int] NULL,
	[LastRoundRobinAgentID] [nvarchar](38) NULL,
	[ConditionID] [nvarchar](38) NULL,
	[Timeout] [int] NULL,
	[TimeoutUnit] [int] NULL,
	[TimeoutEnabled] [smallint] NULL,
	[TimeoutPropertiesSpecified] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workflowlinkconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workflowlinkconstructs](
	[ID] [nvarchar](38) NOT NULL,
	[WorkflowID] [nvarchar](38) NOT NULL,
	[SourceID] [nvarchar](38) NULL,
	[DestinationID] [nvarchar](38) NULL,
	[LinkType] [int] NULL,
	[ResultType] [int] NULL,
	[Value] [ntext] NULL,
	[SourceHorizontalPosition] [decimal](18, 0) NULL,
	[SourceVerticalPosition] [decimal](18, 0) NULL,
	[DestinationHorizontalPosition] [decimal](18, 0) NULL,
	[DestinationVerticalPosition] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workflowpropertiesconstructs]    Script Date: 30-10-2023 10:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workflowpropertiesconstructs](
	[ResourceID] [nvarchar](38) NOT NULL,
	[DefaultAgentID] [nvarchar](38) NULL,
	[DefaultAgentPropertiesSpecified] [smallint] NULL,
	[ErrorNotifyEmailToAddress] [nvarchar](128) NULL,
	[ErrorNotifyEmailFromAddress] [nvarchar](128) NULL,
	[ErrorRunTaskName] [nvarchar](128) NULL,
	[ErrorNotificationPropertiesSpecified] [smallint] NULL,
	[Timeout] [int] NULL,
	[TimeoutUnit] [int] NULL,
	[TimeoutEnabled] [smallint] NULL,
	[TimeoutPropertiesSpecified] [smallint] NULL,
	[ResumeFromFailure] [smallint] NULL,
	[DisableOnFailure] [smallint] NULL,
	[RetryOnFailure] [smallint] NULL,
	[RetryCount] [int] NULL,
	[RetryDelay] [int] NULL,
	[ConcurrencyType] [int] NULL,
	[PriorityAction] [int] NULL,
	[PriorityWaitTimeOut] [int] NULL,
	[WorkflowFailureAction] [int] NULL,
	[MaxWorkflowInstances] [int] NULL,
	[PriorityPropertiesSpecified] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[agentconstructs] ADD  DEFAULT (NULL) FOR [IDWhenLastConnected]
GO
ALTER TABLE [dbo].[agentconstructs] ADD  DEFAULT (NULL) FOR [VersionWhenLastConnected]
GO
ALTER TABLE [dbo].[agentconstructs] ADD  DEFAULT (NULL) FOR [MachineNameWhenLastConnected]
GO
ALTER TABLE [dbo].[agentconstructs] ADD  DEFAULT (NULL) FOR [AgentType]
GO
ALTER TABLE [dbo].[agentconstructs] ADD  DEFAULT (NULL) FOR [Blocked]
GO
ALTER TABLE [dbo].[agentconstructs] ADD  DEFAULT (NULL) FOR [AgentUpgradeStep]
GO
ALTER TABLE [dbo].[agentconstructs] ADD  DEFAULT (NULL) FOR [SubstitutionID]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [DefaultRunAsUserName]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [DefaultRunAsPassword]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [DefaultRunAsDomain]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [LogonScript]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [UnlockScript]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [LogonScriptKeystrokeDelay]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [EnableSAS]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [DefaultUserPropertiesSpecified]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ShowRunningTaskWindow]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [RunningTaskWindowWithTitleBar]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [RunningTaskOnTop]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [RunningTaskWindowTransparent]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [UseInterruptHotkey]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [InterruptHotkey]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ShowTrayIcon]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ShowTrayIconMenu]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [IndicatorsPropertiesSpecified]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [MIBLocation]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [SNMPTrapPort]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [SNMPPropertiesSpecified]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [AgentPort]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [TaskCacheFilePath]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [DisableForegroundTimeout]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [EventMonitorAutoStartMode]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [TerminalServicesUser]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [AgentUpgradeTimeout]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [SystemPropertiesSpecified]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [SMTPServer]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [SMTPPort]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [SMTPUser]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [SMTPPassword]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [SMTPPropertiesSpecified]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [SocksType]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ProxyHost]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ProxyPort]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ProxyUserID]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ProxyPassword]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ProxyPropertiesSpecified]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [UseLowestCompletionState]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [LowestCompletionState]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [StagingPropertiesSpecified]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [MaxRunningTasks]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [TaskTimeout]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [LoadManagementPropertiesSpecified]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [TaskIsolation]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [TaskIsolationPropertiesSpecified]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ConstantsXML]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [SqlConnectionConstantsXML]
GO
ALTER TABLE [dbo].[agentpropertiesconstructs] ADD  DEFAULT (NULL) FOR [MonitorAgentConnection]
GO
ALTER TABLE [dbo].[apipermissions] ADD  DEFAULT (NULL) FOR [GroupID]
GO
ALTER TABLE [dbo].[apipermissions] ADD  DEFAULT (NULL) FOR [WorkflowsListPermission]
GO
ALTER TABLE [dbo].[apipermissions] ADD  DEFAULT (NULL) FOR [TasksListPermission]
GO
ALTER TABLE [dbo].[apipermissions] ADD  DEFAULT (NULL) FOR [ProcessesListPermission]
GO
ALTER TABLE [dbo].[apipermissions] ADD  DEFAULT (NULL) FOR [TriggersListPermission]
GO
ALTER TABLE [dbo].[apipermissions] ADD  DEFAULT (NULL) FOR [FoldersListPermission]
GO
ALTER TABLE [dbo].[apipermissions] ADD  DEFAULT (NULL) FOR [UsersListPermission]
GO
ALTER TABLE [dbo].[apipermissions] ADD  DEFAULT (NULL) FOR [UserGroupsListPermission]
GO
ALTER TABLE [dbo].[apipermissions] ADD  DEFAULT (NULL) FOR [AgentsListPermission]
GO
ALTER TABLE [dbo].[apipermissions] ADD  DEFAULT (NULL) FOR [AgentGroupsListPermission]
GO
ALTER TABLE [dbo].[automateconstructs] ADD  DEFAULT (NULL) FOR [ResourceName]
GO
ALTER TABLE [dbo].[automateconstructs] ADD  DEFAULT (NULL) FOR [ParentID]
GO
ALTER TABLE [dbo].[automateconstructs] ADD  DEFAULT (NULL) FOR [Notes]
GO
ALTER TABLE [dbo].[automateconstructs] ADD  DEFAULT (NULL) FOR [ResultCode]
GO
ALTER TABLE [dbo].[automateconstructs] ADD  DEFAULT (NULL) FOR [ResultText]
GO
ALTER TABLE [dbo].[automateconstructs] ADD  DEFAULT (NULL) FOR [StartedOn]
GO
ALTER TABLE [dbo].[automateconstructs] ADD  DEFAULT (NULL) FOR [EndedOn]
GO
ALTER TABLE [dbo].[automateconstructs] ADD  DEFAULT (NULL) FOR [LockedBy]
GO
ALTER TABLE [dbo].[automateconstructs] ADD  DEFAULT (NULL) FOR [SuccessCount]
GO
ALTER TABLE [dbo].[automateconstructs] ADD  DEFAULT (NULL) FOR [FailureCount]
GO
ALTER TABLE [dbo].[executionevents] ADD  DEFAULT (NULL) FOR [EndDateTime]
GO
ALTER TABLE [dbo].[executionevents] ADD  DEFAULT (NULL) FOR [InstanceID]
GO
ALTER TABLE [dbo].[executionevents] ADD  DEFAULT (NULL) FOR [AgentID]
GO
ALTER TABLE [dbo].[executionevents] ADD  DEFAULT (NULL) FOR [TransactionID]
GO
ALTER TABLE [dbo].[executionevents] ADD  DEFAULT (NULL) FOR [WorkflowInstanceID]
GO
ALTER TABLE [dbo].[executionevents] ADD  DEFAULT (NULL) FOR [UserID]
GO
ALTER TABLE [dbo].[generalevents] ADD  DEFAULT (NULL) FOR [EventText]
GO
ALTER TABLE [dbo].[generalevents] ADD  DEFAULT (NULL) FOR [UserID]
GO
ALTER TABLE [dbo].[generalevents] ADD  DEFAULT (NULL) FOR [PrimaryConstructID]
GO
ALTER TABLE [dbo].[generalevents] ADD  DEFAULT (NULL) FOR [Data]
GO
ALTER TABLE [dbo].[generalevents] ADD  DEFAULT (NULL) FOR [StatusType]
GO
ALTER TABLE [dbo].[generalevents] ADD  DEFAULT (NULL) FOR [SessionID]
GO
ALTER TABLE [dbo].[instances] ADD  DEFAULT (NULL) FOR [UserID]
GO
ALTER TABLE [dbo].[instances] ADD  DEFAULT (NULL) FOR [UserName]
GO
ALTER TABLE [dbo].[instances] ADD  DEFAULT (NULL) FOR [UserPath]
GO
ALTER TABLE [dbo].[instances] ADD  DEFAULT (NULL) FOR [TriggerID]
GO
ALTER TABLE [dbo].[instances] ADD  DEFAULT (NULL) FOR [TriggerName]
GO
ALTER TABLE [dbo].[instances] ADD  DEFAULT (NULL) FOR [TriggerPath]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [ConstructID]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [GroupID]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [CreatePermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [ReadPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [EditPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [DeletePermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [MovePermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [EnablePermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [RunPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [StopPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [ImportPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [ExportPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [StagingPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [AssignPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [SecurityPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [ResurrectPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [ResumePermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [RunFromHerePermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [LockPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [UpgradePermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [DeleteRevisionPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [RestoreRevisionPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [UpdateRevisionPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [DeleteRecycleBinPermission]
GO
ALTER TABLE [dbo].[itempermissions] ADD  DEFAULT (NULL) FOR [RestoreRecycleBinPermission]
GO
ALTER TABLE [dbo].[processconstructs] ADD  DEFAULT (NULL) FOR [CommandLine]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [ResourceID]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [ResourceName]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [ResourceParentID]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [ResourceType]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [ArchivedOn]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [ArchivedBy]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [Version]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [Snapshot]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [Comments]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [Successes]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [Failures]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [RecycleBin]
GO
ALTER TABLE [dbo].[snapshots] ADD  DEFAULT (NULL) FOR [LockedBy]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [GroupID]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [DeployPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ViewReportsPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ViewPreferencesPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [EditPreferencesPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ViewServerSettingsPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [EditServerSettingsPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ViewDefaultPropertiesPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [EditDefaultPropertiesPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ViewLicensingPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [EditLicensingPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ToggleTriggeringPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ViewDashboardPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [EditDashboardPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ViewCalendarPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ViewRevisionManagementPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [EditRevisionManagementPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ViewRecycleBinPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ViewCredentialsPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [EditCredentialsPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [ViewVaultConnectionsPermission]
GO
ALTER TABLE [dbo].[systempermissions] ADD  DEFAULT (NULL) FOR [EditVaultConnectionsPermission]
GO
ALTER TABLE [dbo].[taskconstructs] ADD  DEFAULT (NULL) FOR [AML]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [OnLogged]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [OnLogoff]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [OnLocked]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [UseLogonDefault]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [LogonUsername]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [LogonPassword]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [LogonDomain]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [RunAsElevated]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [LogonPropertiesSpecified]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ConcurrencyType]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [PriorityAction]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [PriorityWaitTimeOut]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [TaskFailureAction]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [PriorityPropertiesSpecified]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ErrorNotifyEmailToAddress]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ErrorNotifyEmailFromAddress]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ErrorRunTaskName]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ErrorNotificationPropertiesSpecified]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [TaskExecutionSpeed]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [CanStopTask]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ExecutionPropertiesSpecified]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [IsolationOverride]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [IsolationPropertiesSpecified]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [MaxTaskInstances]
GO
ALTER TABLE [dbo].[taskpropertiesconstructs] ADD  DEFAULT (NULL) FOR [TaskTimeout]
GO
ALTER TABLE [dbo].[workflowconstructs] ADD  DEFAULT (NULL) FOR [LinkType]
GO
ALTER TABLE [dbo].[workflowitempropertiesconstructs] ADD  DEFAULT (NULL) FOR [Timeout]
GO
ALTER TABLE [dbo].[workflowitempropertiesconstructs] ADD  DEFAULT (NULL) FOR [TimeoutUnit]
GO
ALTER TABLE [dbo].[workflowitempropertiesconstructs] ADD  DEFAULT (NULL) FOR [TimeoutEnabled]
GO
ALTER TABLE [dbo].[workflowitempropertiesconstructs] ADD  DEFAULT (NULL) FOR [TimeoutPropertiesSpecified]
GO
ALTER TABLE [dbo].[workflowlinkconstructs] ADD  DEFAULT (NULL) FOR [Value]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [DefaultAgentID]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [DefaultAgentPropertiesSpecified]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ErrorNotifyEmailToAddress]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ErrorNotifyEmailFromAddress]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ErrorRunTaskName]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ErrorNotificationPropertiesSpecified]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [Timeout]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [TimeoutUnit]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [TimeoutEnabled]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [TimeoutPropertiesSpecified]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [ConcurrencyType]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [PriorityAction]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [PriorityWaitTimeOut]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [WorkflowFailureAction]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [MaxWorkflowInstances]
GO
ALTER TABLE [dbo].[workflowpropertiesconstructs] ADD  DEFAULT (NULL) FOR [PriorityPropertiesSpecified]
GO
