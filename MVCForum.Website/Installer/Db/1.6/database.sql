/****** Object:  Table [dbo].[UploadedFile]    Script Date: 04/19/2013 12:22:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadedFile](
	[Id] [uniqueidentifier] NOT NULL,
	[Filename] [nvarchar](200) NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[Post_Id] [uniqueidentifier] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_UploadedFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[BannedWord]    Script Date: 04/17/2013 14:34:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BannedWord](
	[Id] [uniqueidentifier] NOT NULL,
	[Word] [nvarchar](75) NOT NULL,
	[DateAdded] [datetime] NOT NULL,
 CONSTRAINT [PK_BannedWord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[BannedEmail]    Script Date: 04/16/2013 08:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BannedEmail](
	[Id] [uniqueidentifier] NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[DateAdded] [datetime] NOT NULL,
CONSTRAINT [PK_BannedEmail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[TopicTag]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopicTag](
	[Id] [uniqueidentifier] NOT NULL,
	[Tag] [nvarchar](100) NOT NULL,
	[Slug] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Topic_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipUser](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordSalt] [nvarchar](128) NULL,
	[Email] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttempt] [int] NOT NULL,
	[Slug] [nvarchar](150) NOT NULL,
	[Comment] [ntext] NULL,
	[Signature] [nvarchar](1000) NULL,
	[Age] [int] NULL,
	[Location] [nvarchar](100) NULL,
	[Website] [nvarchar](100) NULL,
	[Twitter] [nvarchar](60) NULL,
	[Facebook] [nvarchar](60) NULL,
	[Avatar] [nvarchar](500) NULL,
	[FacebookAccessToken] [nvarchar](300) NULL,
	[FacebookId] [bigint] NULL,
	[TwitterAccessToken] [nvarchar](300) NULL,
	[TwitterId] [nvarchar](150) NULL,
	[GoogleAccessToken] [nvarchar](300) NULL,
	[GoogleId] [nvarchar](150) NULL,
	[IsExternalAccount] [bit] NULL,
	[TwitterShowFeed] [bit] NULL,
	[DisableEmailNotifications] [bit] NULL,
	[DisablePosting] [bit] NULL,
	[DisablePrivateMessages] [bit] NULL,
	[DisableFileUploads] [bit] NULL,
	[LoginIdExpires] [datetime] NULL,
	[MiscAccessToken] [nvarchar](250) NULL,
	[Latitude] [nvarchar](40) NULL,
	[Longitude] [nvarchar](40) NULL,
	[LastActivityDate] [datetime] NULL,
 CONSTRAINT [PK_MembershipUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
) TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembershipRole]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipRole](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_MembershipRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[Category]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Description] [ntext] NULL,
	[Category_Id] [uniqueidentifier] NULL,
	[DateCreated] [datetime] NOT NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[ModerateTopics] [bit] NOT NULL,
	[ModeratePosts] [bit] NOT NULL,
	[PageTitle] [nvarchar](80) NULL,
	[MetaDescription] [nvarchar](200) NULL,
	[Path] [nvarchar](2500) NULL,
	[Colour] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
) TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocaleResourceKey]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocaleResourceKey](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Notes] [ntext] NULL,
	[DateAdded] [date] NOT NULL,
 CONSTRAINT [PK_LocaleResourceKey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
) TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[LanguageCulture] [nvarchar](20) NOT NULL,
	[FlagImageFileName] [nvarchar](50) NULL,
	[RightToLeft] [bit] NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[Badge]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Badge](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [ntext] NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](50) NOT NULL,
	[AwardsPoints] [int] NULL,
 CONSTRAINT [PK_Badge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
) TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[Id] [uniqueidentifier] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[Poll]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poll](
	[Id] [uniqueidentifier] NOT NULL,
	[IsClosed] [bit] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Poll] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[MembershipUsersInRoles]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipUsersInRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleIdentifier] [uniqueidentifier] NOT NULL,
	[UserIdentifier] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MembershipUsersInRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[MembershipUserPoints]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipUserPoints](
	[Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[Points] [int] NOT NULL,
	[DateAdded] [datetime] NOT NULL,
 CONSTRAINT [PK_MembershipUser_Points] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[MembershipUser_Badge]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembershipUser_Badge](
	[Id] [uniqueidentifier] NOT NULL,
	[Badge_Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MembershipUser_Badge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[CategoryPermissionForRole]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryPermissionForRole](
	[Id] [uniqueidentifier] NOT NULL,
	[Permission_Id] [uniqueidentifier] NOT NULL,
	[MembershipRole_Id] [uniqueidentifier] NOT NULL,
	[Category_Id] [uniqueidentifier] NOT NULL,
	[IsTicked] [bit] NOT NULL,
 CONSTRAINT [PK_CategoryPermissionForRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[CategoryNotification]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryNotification](
	[Id] [uniqueidentifier] NOT NULL,
	[Category_Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CategoryNotification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[BadgeTypeTimeLastChecked]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BadgeTypeTimeLastChecked](
	[Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[BadgeType] [nvarchar](50) NOT NULL,
	[TimeLastChecked] [datetime] NOT NULL,
 CONSTRAINT [PK_BadgeTypeTimeLastChecked] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[LocaleStringResource]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocaleStringResource](
	[Id] [uniqueidentifier] NOT NULL,
	[Language_Id] [uniqueidentifier] NOT NULL,
	[LocaleResourceKey_Id] [uniqueidentifier] NOT NULL,
	[ResourceValue] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_LocaleStringResource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[Solved] [bit] NOT NULL,
	[Category_Id] [uniqueidentifier] NOT NULL,
	[Post_Id] [uniqueidentifier] NULL,
	[Slug] [nvarchar](450) NOT NULL,
	[Views] [int] NULL,
	[IsSticky] [bit] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[Poll_Id] [uniqueidentifier] NULL,
	[Pending] [bit] NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [uniqueidentifier] NOT NULL,
	[ForumName] [nvarchar](500) NULL,
	[ForumUrl] [nvarchar](500) NULL,
	[IsClosed] [bit] NULL,
	[EnableRSSFeeds] [bit] NULL,
	[DisplayEditedBy] [bit] NULL,
	[EnablePostFileAttachments] [bit] NULL,
	[EnableMarkAsSolution] [bit] NULL,
	[EnableSpamReporting] [bit] NULL,
	[EnableMemberReporting] [bit] NULL,
	[EnableEmailSubscriptions] [bit] NULL,
	[ManuallyAuthoriseNewMembers] [bit] NULL,
	[EmailAdminOnNewMemberSignUp] [bit] NULL,
	[TopicsPerPage] [int] NULL,
	[PostsPerPage] [int] NULL,
	[EnablePrivateMessages] [bit] NULL,
	[MaxPrivateMessagesPerMember] [int] NULL,
	[PrivateMessageFloodControl] [int] NULL,
	[EnableSignatures] [bit] NULL,
	[EnablePoints] [bit] NULL,
	[PointsAllowedToVoteAmount] [int] NULL,
	[PointsAddedPerPost] [int] NULL,
	[PointsAddedPostiveVote] [int] NULL,
	[PointsAddedForSolution] [int] NULL,
	[PointsDeductedNagativeVote] [int] NULL,
	[AdminEmailAddress] [nvarchar](100) NULL,
	[NotificationReplyEmail] [nvarchar](100) NULL,
	[SMTP] [nvarchar](100) NULL,
	[SMTPUsername] [nvarchar](100) NULL,
	[SMTPPort] [nvarchar](10) NULL,
	[SMTPEnableSSL] [bit] NULL,
	[SMTPPassword] [nvarchar](100) NULL,
	[Theme] [nvarchar](100) NULL,
	[NewMemberStartingRole] [uniqueidentifier] NULL,
	[DefaultLanguage_Id] [uniqueidentifier] NOT NULL,
	[ActivitiesPerPage] [int] NULL,
	[EnableAkisment] [bit] NULL,
	[AkismentKey] [nvarchar](100) NULL,
	[CurrentDatabaseVersion] [nvarchar](10) NULL,
	[SpamQuestion] [nvarchar](500) NULL,
	[SpamAnswer] [nvarchar](500) NULL,
	[EnableSocialLogins] [bit] NULL,
	[EnablePolls] [bit] NULL,
	[NewMemberEmailConfirmation] [bit] NULL,
	[SuspendRegistration] [bit] NULL,
	[PageTitle] [nvarchar](80) NULL,
	[MetaDesc] [nvarchar](200) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[PrivateMessage]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrivateMessage](
	[Id] [uniqueidentifier] NOT NULL,
	[UserTo_Id] [uniqueidentifier] NOT NULL,
	[UserFrom_Id] [uniqueidentifier] NOT NULL,
	[DateSent] [datetime] NOT NULL,
	[Subject] [nvarchar](80) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[IsSentMessage] [bit] NOT NULL,
 CONSTRAINT [PK_PrivateMessage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[Post]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[PostContent] [ntext] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[VoteCount] [int] NOT NULL,
	[Topic_Id] [uniqueidentifier] NOT NULL,
	[DateEdited] [datetime] NULL,
	[IsSolution] [bit] NOT NULL,
	[IsTopicStarter] [bit] NULL,
	[FlaggedAsSpam] [bit] NULL,
	[IpAddress] [nvarchar](50) NULL,
	[Pending] [bit] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
) TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopicNotification]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopicNotification](
	[Id] [uniqueidentifier] NOT NULL,
	[Topic_Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[Topic_Tag]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic_Tag](
	[Id] [uniqueidentifier] NOT NULL,
	[Topic_Id] [uniqueidentifier] NOT NULL,
	[TopicTag_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Topic_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[PollAnswer]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollAnswer](
	[Id] [uniqueidentifier] NOT NULL,
	[Answer] [nvarchar](600) NOT NULL,
	[Poll_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PollAnswer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[Vote]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
CREATE TABLE [dbo].[Vote](
	[Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[Post_Id] [uniqueidentifier] NOT NULL,
	[Amount] [int] NOT NULL,
	[VotedByMembershipUser_Id] [uniqueidentifier] NULL,
	[DateVoted] [datetime] NULL,
 CONSTRAINT [PK_Vote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[PollVote]    Script Date: 04/08/2013 20:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollVote](
	[Id] [uniqueidentifier] NOT NULL,
	[MembershipUser_Id] [uniqueidentifier] NOT NULL,
	[PollAnswer_Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PollVote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Default [DF_Category_SortOrder]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_SortOrder]  DEFAULT ((0)) FOR [SortOrder]
GO
/****** Object:  Default [DF_Category_IsLocked]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsLocked]  DEFAULT ((0)) FOR [IsLocked]
GO
/****** Object:  Default [DF_CategoryPermissionForRole_HasPermission]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[CategoryPermissionForRole] ADD  CONSTRAINT [DF_CategoryPermissionForRole_HasPermission]  DEFAULT ((0)) FOR [IsTicked]
GO
/****** Object:  Default [MembershipUser_Badge_Id]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[MembershipUser_Badge] ADD  CONSTRAINT [MembershipUser_Badge_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [MembershipUsersInRoles_Id]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[MembershipUsersInRoles] ADD  CONSTRAINT [MembershipUsersInRoles_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF_Poll_IsClosed]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Poll] ADD  CONSTRAINT [DF_Poll_IsClosed]  DEFAULT ((0)) FOR [IsClosed]
GO
/****** Object:  Default [DF_Post_VoteCount]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_VoteCount]  DEFAULT ((0)) FOR [VoteCount]
GO
/****** Object:  Default [DF_Post_IsApproved]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_IsApproved]  DEFAULT ((0)) FOR [IsSolution]
GO
/****** Object:  Default [DF_Post_IsTopicStarter]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Post_IsTopicStarter]  DEFAULT ((0)) FOR [IsTopicStarter]
GO
/****** Object:  Default [DF_PrivateMessage_IsRead]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[PrivateMessage] ADD  CONSTRAINT [DF_PrivateMessage_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
/****** Object:  Default [DF_Topic_Solved]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Topic] ADD  CONSTRAINT [DF_Topic_Solved]  DEFAULT ((0)) FOR [Solved]
GO
/****** Object:  Default [DF_Topic_IsSticky]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Topic] ADD  CONSTRAINT [DF_Topic_IsSticky]  DEFAULT ((0)) FOR [IsSticky]
GO
/****** Object:  Default [DF_Topic_IsLocked]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Topic] ADD  CONSTRAINT [DF_Topic_IsLocked]  DEFAULT ((0)) FOR [IsLocked]
GO
/****** Object:  Default [DF_Id]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Topic_Tag] ADD  CONSTRAINT [DF_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  ForeignKey [FK_BadgeTypeTimeLastChecked_MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[BadgeTypeTimeLastChecked]  WITH NOCHECK ADD  CONSTRAINT [FK_BadgeTypeTimeLastChecked_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[BadgeTypeTimeLastChecked] NOCHECK CONSTRAINT [FK_BadgeTypeTimeLastChecked_MembershipUser]
GO
/****** Object:  ForeignKey [FK_CategoryNotification_Category]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[CategoryNotification]  WITH CHECK ADD  CONSTRAINT [FK_CategoryNotification_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[CategoryNotification] CHECK CONSTRAINT [FK_CategoryNotification_Category]
GO
/****** Object:  ForeignKey [FK_CategoryNotification_MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[CategoryNotification]  WITH CHECK ADD  CONSTRAINT [FK_CategoryNotification_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[CategoryNotification] CHECK CONSTRAINT [FK_CategoryNotification_MembershipUser]
GO
/****** Object:  ForeignKey [FK_CategoryPermissionForRole_Category]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[CategoryPermissionForRole]  WITH CHECK ADD  CONSTRAINT [FK_CategoryPermissionForRole_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[CategoryPermissionForRole] CHECK CONSTRAINT [FK_CategoryPermissionForRole_Category]
GO
/****** Object:  ForeignKey [FK_CategoryPermissionForRole_MembershipRole]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[CategoryPermissionForRole]  WITH CHECK ADD  CONSTRAINT [FK_CategoryPermissionForRole_MembershipRole] FOREIGN KEY([MembershipRole_Id])
REFERENCES [dbo].[MembershipRole] ([Id])
GO
ALTER TABLE [dbo].[CategoryPermissionForRole] CHECK CONSTRAINT [FK_CategoryPermissionForRole_MembershipRole]
GO
/****** Object:  ForeignKey [FK_CategoryPermissionForRole_Permission]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[CategoryPermissionForRole]  WITH CHECK ADD  CONSTRAINT [FK_CategoryPermissionForRole_Permission] FOREIGN KEY([Permission_Id])
REFERENCES [dbo].[Permission] ([Id])
GO
ALTER TABLE [dbo].[CategoryPermissionForRole] CHECK CONSTRAINT [FK_CategoryPermissionForRole_Permission]
GO
/****** Object:  ForeignKey [FK_LocaleStringResource_Language]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[LocaleStringResource]  WITH NOCHECK ADD  CONSTRAINT [FK_LocaleStringResource_Language] FOREIGN KEY([Language_Id])
REFERENCES [dbo].[Language] ([Id])
GO
ALTER TABLE [dbo].[LocaleStringResource] NOCHECK CONSTRAINT [FK_LocaleStringResource_Language]
GO
/****** Object:  ForeignKey [FK_LocaleStringResource_LocaleResourceKey]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[LocaleStringResource]  WITH NOCHECK ADD  CONSTRAINT [FK_LocaleStringResource_LocaleResourceKey] FOREIGN KEY([LocaleResourceKey_Id])
REFERENCES [dbo].[LocaleResourceKey] ([Id])
GO
ALTER TABLE [dbo].[LocaleStringResource] NOCHECK CONSTRAINT [FK_LocaleStringResource_LocaleResourceKey]
GO
/****** Object:  ForeignKey [FK_MembershipUser_Badge_Badge]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[MembershipUser_Badge]  WITH NOCHECK ADD  CONSTRAINT [FK_MembershipUser_Badge_Badge] FOREIGN KEY([Badge_Id])
REFERENCES [dbo].[Badge] ([Id])
GO
ALTER TABLE [dbo].[MembershipUser_Badge] NOCHECK CONSTRAINT [FK_MembershipUser_Badge_Badge]
GO
/****** Object:  ForeignKey [FK_MembershipUser_Badge_MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[MembershipUser_Badge]  WITH NOCHECK ADD  CONSTRAINT [FK_MembershipUser_Badge_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[MembershipUser_Badge] NOCHECK CONSTRAINT [FK_MembershipUser_Badge_MembershipUser]
GO
/****** Object:  ForeignKey [FK_MembershipUserPoints_MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[MembershipUserPoints]  WITH NOCHECK ADD  CONSTRAINT [FK_MembershipUserPoints_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[MembershipUserPoints] NOCHECK CONSTRAINT [FK_MembershipUserPoints_MembershipUser]
GO
/****** Object:  ForeignKey [FK_MembershipUsersInRoles_MembershipRole1]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[MembershipUsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_MembershipUsersInRoles_MembershipRole1] FOREIGN KEY([RoleIdentifier])
REFERENCES [dbo].[MembershipRole] ([Id])
GO
ALTER TABLE [dbo].[MembershipUsersInRoles] CHECK CONSTRAINT [FK_MembershipUsersInRoles_MembershipRole1]
GO
/****** Object:  ForeignKey [FK_MembershipUsersInRoles_MembershipUser1]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[MembershipUsersInRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_MembershipUsersInRoles_MembershipUser1] FOREIGN KEY([UserIdentifier])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[MembershipUsersInRoles] NOCHECK CONSTRAINT [FK_MembershipUsersInRoles_MembershipUser1]
GO
/****** Object:  ForeignKey [FK_Poll_MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Poll]  WITH CHECK ADD  CONSTRAINT [FK_Poll_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[Poll] CHECK CONSTRAINT [FK_Poll_MembershipUser]
GO
/****** Object:  ForeignKey [FK_PollAnswer_Poll]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[PollAnswer]  WITH CHECK ADD  CONSTRAINT [FK_PollAnswer_Poll] FOREIGN KEY([Poll_Id])
REFERENCES [dbo].[Poll] ([Id])
GO
ALTER TABLE [dbo].[PollAnswer] CHECK CONSTRAINT [FK_PollAnswer_Poll]
GO
/****** Object:  ForeignKey [FK_PollVote_MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[PollVote]  WITH CHECK ADD  CONSTRAINT [FK_PollVote_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[PollVote] CHECK CONSTRAINT [FK_PollVote_MembershipUser]
GO
/****** Object:  ForeignKey [FK_PollVote_PollAnswer]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[PollVote]  WITH CHECK ADD  CONSTRAINT [FK_PollVote_PollAnswer] FOREIGN KEY([PollAnswer_Id])
REFERENCES [dbo].[PollAnswer] ([Id])
GO
ALTER TABLE [dbo].[PollVote] CHECK CONSTRAINT [FK_PollVote_PollAnswer]
GO
/****** Object:  ForeignKey [FK_Post_MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_MembershipUser]
GO
/****** Object:  ForeignKey [FK_Post_Topic]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Topic] FOREIGN KEY([Topic_Id])
REFERENCES [dbo].[Topic] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Topic]
GO
/****** Object:  ForeignKey [FK_PrivateMessage_MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[PrivateMessage]  WITH NOCHECK ADD  CONSTRAINT [FK_PrivateMessage_MembershipUser] FOREIGN KEY([UserTo_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[PrivateMessage] NOCHECK CONSTRAINT [FK_PrivateMessage_MembershipUser]
GO
/****** Object:  ForeignKey [FK_PrivateMessage_MembershipUser1]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[PrivateMessage]  WITH NOCHECK ADD  CONSTRAINT [FK_PrivateMessage_MembershipUser1] FOREIGN KEY([UserFrom_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[PrivateMessage] NOCHECK CONSTRAINT [FK_PrivateMessage_MembershipUser1]
GO
/****** Object:  ForeignKey [FK_Settings_MembershipRole]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Settings]  WITH CHECK ADD  CONSTRAINT [FK_Settings_MembershipRole] FOREIGN KEY([NewMemberStartingRole])
REFERENCES [dbo].[MembershipRole] ([Id])
GO
ALTER TABLE [dbo].[Settings] CHECK CONSTRAINT [FK_Settings_MembershipRole]
GO
/****** Object:  ForeignKey [FK_Topic_Category]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_Topic_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_Topic_Category]
GO
/****** Object:  ForeignKey [FK_Topic_MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Topic]  WITH NOCHECK ADD  CONSTRAINT [FK_Topic_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[Topic] NOCHECK CONSTRAINT [FK_Topic_MembershipUser]
GO
/****** Object:  ForeignKey [FK_Topic_Tag_Topic]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Topic_Tag]  WITH NOCHECK ADD  CONSTRAINT [FK_Topic_Tag_Topic] FOREIGN KEY([Topic_Id])
REFERENCES [dbo].[Topic] ([Id])
GO
ALTER TABLE [dbo].[Topic_Tag] NOCHECK CONSTRAINT [FK_Topic_Tag_Topic]
GO
/****** Object:  ForeignKey [FK_Topic_Tag_TopicTag]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Topic_Tag]  WITH NOCHECK ADD  CONSTRAINT [FK_Topic_Tag_TopicTag] FOREIGN KEY([TopicTag_Id])
REFERENCES [dbo].[TopicTag] ([Id])
GO
ALTER TABLE [dbo].[Topic_Tag] NOCHECK CONSTRAINT [FK_Topic_Tag_TopicTag]
GO
/****** Object:  ForeignKey [FK_TopicNotification_MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[TopicNotification]  WITH NOCHECK ADD  CONSTRAINT [FK_TopicNotification_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[TopicNotification] NOCHECK CONSTRAINT [FK_TopicNotification_MembershipUser]
GO
/****** Object:  ForeignKey [FK_TopicNotification_Topic]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[TopicNotification]  WITH CHECK ADD  CONSTRAINT [FK_TopicNotification_Topic] FOREIGN KEY([Topic_Id])
REFERENCES [dbo].[Topic] ([Id])
GO
ALTER TABLE [dbo].[TopicNotification] CHECK CONSTRAINT [FK_TopicNotification_Topic]
GO
/****** Object:  ForeignKey [FK_Vote_MembershipUser]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Vote]  WITH NOCHECK ADD  CONSTRAINT [FK_Vote_MembershipUser] FOREIGN KEY([MembershipUser_Id])
REFERENCES [dbo].[MembershipUser] ([Id])
GO
ALTER TABLE [dbo].[Vote] NOCHECK CONSTRAINT [FK_Vote_MembershipUser]
GO
/****** Object:  ForeignKey [FK_Vote_Post]    Script Date: 04/08/2013 20:17:47 ******/
ALTER TABLE [dbo].[Vote]  WITH NOCHECK ADD  CONSTRAINT [FK_Vote_Post] FOREIGN KEY([Post_Id])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Vote] NOCHECK CONSTRAINT [FK_Vote_Post]
GO
