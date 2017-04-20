USE [master]
GO
/****** Object:  Database [sipcredit_cms]    Script Date: 2015/10/28 9:23:00 ******/
CREATE DATABASE [sipcredit_cms] ON  PRIMARY 
( NAME = N'sipcredit_base', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\sipcredit_cmd.mdf' , SIZE = 38912KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sipcredit_base_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\sipcredit_cms_1.ldf' , SIZE = 1964480KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [sipcredit_cms] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sipcredit_cms].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sipcredit_cms] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sipcredit_cms] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sipcredit_cms] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sipcredit_cms] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sipcredit_cms] SET ARITHABORT OFF 
GO
ALTER DATABASE [sipcredit_cms] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sipcredit_cms] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [sipcredit_cms] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sipcredit_cms] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sipcredit_cms] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sipcredit_cms] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sipcredit_cms] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sipcredit_cms] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sipcredit_cms] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sipcredit_cms] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sipcredit_cms] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sipcredit_cms] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sipcredit_cms] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sipcredit_cms] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sipcredit_cms] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sipcredit_cms] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sipcredit_cms] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sipcredit_cms] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sipcredit_cms] SET RECOVERY FULL 
GO
ALTER DATABASE [sipcredit_cms] SET  MULTI_USER 
GO
ALTER DATABASE [sipcredit_cms] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sipcredit_cms] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'sipcredit_cms', N'ON'
GO
USE [sipcredit_cms]
GO
/****** Object:  Schema [SH]    Script Date: 2015/10/28 9:23:00 ******/
CREATE SCHEMA [SH]
GO
/****** Object:  Schema [ZHU]    Script Date: 2015/10/28 9:23:00 ******/
CREATE SCHEMA [ZHU]
GO
/****** Object:  Synonym [dbo].[BUS_HBJ_QYHBJG]    Script Date: 2015/10/28 9:23:00 ******/
CREATE SYNONYM [dbo].[BUS_HBJ_QYHBJG] FOR [sipcredit_baseInfo].[dbo].[BUS_HBJ_QYHBJG]
GO
/****** Object:  Synonym [dbo].[S_WOXIANGCESHI]    Script Date: 2015/10/28 9:23:00 ******/
CREATE SYNONYM [dbo].[S_WOXIANGCESHI] FOR [sipcredit_temp].[dbo].[S_WOXIANGCESHI]
GO
/****** Object:  Synonym [dbo].[test_2]    Script Date: 2015/10/28 9:23:00 ******/
CREATE SYNONYM [dbo].[test_2] FOR [sipcredit_baseInfo].[dbo].[XY_YYSJ]
GO
/****** Object:  Synonym [dbo].[test_3]    Script Date: 2015/10/28 9:23:00 ******/
CREATE SYNONYM [dbo].[test_3] FOR [sipcredit_baseInfo].[dbo].[S_HBJ_QYHBJG]
GO
/****** Object:  Table [dbo].[advertisement]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[advertisement](
	[advertisement_id] [int] NOT NULL,
	[site_name] [varchar](100) NULL,
	[logo] [varchar](255) NULL,
	[description] [varchar](512) NULL,
	[priority] [int] NULL,
	[domain] [varchar](255) NULL,
	[view_times] [int] NULL,
	[position] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[advertisement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[authority]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[authority](
	[authority_id] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[value] [int] NULL,
	[description] [varchar](255) NULL,
	[type] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[authority_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHANNEL]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHANNEL](
	[channel_id] [int] IDENTITY(1,1) NOT NULL,
	[model_id] [int] NULL,
	[parent_id] [int] NULL,
	[name] [varchar](200) NULL,
	[path] [varchar](200) NULL,
	[priority] [int] NULL,
	[has_content] [int] NULL,
	[has_img] [int] NULL,
	[is_display] [int] NULL,
	[page_size] [int] NULL,
	[creator_id] [varchar](50) NULL,
	[create_time] [datetime] NULL,
	[updator_id] [varchar](50) NULL,
	[tpl_channel] [varchar](255) NULL,
	[tpl_content] [varchar](255) NULL,
	[title] [varchar](255) NULL,
	[keywords] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[status] [int] NULL,
	[update_time] [datetime] NULL,
	[txt] [nvarchar](max) NULL,
	[is_lock] [int] NULL,
 CONSTRAINT [PK_CHANNEL] PRIMARY KEY CLUSTERED 
(
	[channel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[channel_content]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[channel_content](
	[channel_content_id] [int] NOT NULL,
	[channel_id] [int] NOT NULL,
	[content_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[channel_content_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[channel_model]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[channel_model](
	[channel_model_id] [int] NOT NULL,
	[model_id] [int] NOT NULL,
	[channel_id] [int] NOT NULL,
	[tpl_content] [varchar](100) NULL,
	[priority] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[channel_model_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[content]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[content](
	[content_id] [int] IDENTITY(1,1) NOT NULL,
	[content_type_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
	[pre_status] [varchar](10) NULL,
	[status] [varchar](10) NULL,
	[title] [varchar](512) NULL,
	[short_title] [varchar](100) NULL,
	[author] [nvarchar](150) NULL,
	[origin] [varchar](100) NULL,
	[origin_url] [varchar](255) NULL,
	[summary] [nvarchar](4000) NULL,
	[media_type] [varchar](20) NULL,
	[media_path] [varchar](255) NULL,
	[is_top] [int] NULL,
	[template] [varchar](255) NULL,
	[puttop_time] [datetime] NULL,
	[release_time] [datetime] NULL,
	[creator_id] [varchar](100) NULL,
	[create_time] [datetime] NULL,
	[title_img] [varchar](100) NULL,
	[category] [varchar](100) NULL,
	[path] [varchar](2000) NULL,
	[view_times] [int] NULL,
	[txt] [nvarchar](max) NULL,
 CONSTRAINT [PK__content__655FE5106F4A8121] PRIMARY KEY CLUSTERED 
(
	[content_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[content_comment]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[content_comment](
	[content_comment_id] [int] NOT NULL,
	[content_id] [int] NOT NULL,
	[parent_id] [int] NULL,
	[member_id] [int] NULL,
	[username] [varchar](100) NULL,
	[ip] [varchar](100) NULL,
	[content_comment] [varchar](1024) NULL,
	[create_time] [date] NULL,
	[is_display] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[content_comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[content_picture]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[content_picture](
	[content_picture_id] [int] NOT NULL,
	[content_id] [int] NOT NULL,
	[priority] [int] NOT NULL,
	[img_path] [varchar](1024) NULL,
	[description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[content_picture_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[content_tag]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[content_tag](
	[content_tag_id] [int] NOT NULL,
	[content_id] [int] NOT NULL,
	[priority] [int] NULL,
	[value] [nvarchar](4000) NULL,
	[ref_count] [int] NULL,
 CONSTRAINT [PK__content___358C9DD016644E42] PRIMARY KEY CLUSTERED 
(
	[content_tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[content_type]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[content_type](
	[content_type_id] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[img_width] [int] NULL,
	[img_height] [int] NULL,
	[has_img] [int] NULL,
	[is_disabled] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dictionary]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dictionary](
	[dictionary_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[value] [varchar](255) NULL,
	[type] [varchar](255) NULL,
	[description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[dictionary_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[friendlylink]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[friendlylink](
	[friendlylink_id] [int] NOT NULL,
	[friendlylink_type_id] [int] NOT NULL,
	[site_name] [varchar](100) NULL,
	[domain] [varchar](255) NULL,
	[priority] [int] NULL,
	[view_times] [int] NULL,
	[logo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[friendlylink_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[friendlylink_type]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[friendlylink_type](
	[friendlylink_type_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[priority] [int] NULL,
	[type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[friendlylink_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ID_CHANNEL]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ID_CHANNEL](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[no] [int] NULL,
	[channel_id] [int] NULL,
 CONSTRAINT [PK_ID_CHANNEL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[keyword]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[keyword](
	[keyword_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[is_disabled] [int] NULL,
	[replace_value] [varchar](100) NULL,
 CONSTRAINT [PK__keyword__03E8D7CF725BF7F6] PRIMARY KEY CLUSTERED 
(
	[keyword_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[message]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[message](
	[message_id] [int] NOT NULL,
	[title] [varchar](255) NULL,
	[message] [varchar](512) NULL,
	[create_time] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[message_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[model]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[model](
	[model_id] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[path] [varchar](50) NULL,
	[priority] [int] NULL,
	[has_content] [int] NULL,
	[is_disabled] [int] NULL,
	[tpl_channel_prefix] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[model_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[model_item]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[model_item](
	[model_item_id] [int] NOT NULL,
	[model_id] [int] NOT NULL,
	[field] [varchar](100) NULL,
	[item_label] [varchar](100) NULL,
	[priority] [int] NULL,
	[data_type] [varchar](50) NULL,
	[def_value] [varchar](512) NULL,
	[value] [varchar](512) NULL,
	[area_rows] [int] NULL,
	[area_cols] [int] NULL,
	[text_size] [int] NULL,
	[is_single] [int] NULL,
	[is_custom] [int] NULL,
	[is_display] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[model_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reply]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reply](
	[reply_id] [int] NOT NULL,
	[message_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[reply] [varchar](255) NULL,
	[create_time] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[reply_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[description] [varchar](255) NULL,
	[authority_value] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role_authority]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_authority](
	[role_authority_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
	[authority_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_authority_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SYS_DEPARTMENT]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_DEPARTMENT](
	[SYS_DEPARTMENT_ID] [varchar](50) NOT NULL,
	[DEPARTMENT_NAME] [varchar](100) NULL,
	[PARENT_ID] [varchar](50) NULL,
	[DESCRIPTION] [varchar](500) NULL,
	[ADMIN_USERNAME] [varchar](100) NULL,
	[CREATE_BY] [varchar](100) NOT NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[UPDATE_BY] [varchar](100) NULL,
	[UPDATE_DATE] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SYS_DEPARTMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_DICTIONARY]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_DICTIONARY](
	[ID] [varchar](32) NOT NULL,
	[CODE] [varchar](255) NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[TYPE] [varchar](255) NULL,
	[REMARK] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_DICTIONARYCLASS]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_DICTIONARYCLASS](
	[ID] [nvarchar](50) NOT NULL,
	[DICTIONARYNAME] [nvarchar](50) NULL,
	[DICTIONARYNUM] [nvarchar](50) NULL,
	[INFOID] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sys_group]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_group](
	[group_id] [int] NOT NULL,
	[parent_id] [int] NULL,
	[name] [varchar](100) NULL,
	[type] [varchar](50) NULL,
	[description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_LOG]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_LOG](
	[SYS_LOG_ID] [varchar](50) NOT NULL,
	[USER_NAME] [varchar](50) NULL,
	[CREATE_DATE_BY] [datetime] NULL,
	[IP] [varchar](20) NULL,
	[TYPE] [varchar](2) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[EXCEPTIONCODE] [varchar](200) NULL,
	[EXCEPTIONDETAIL] [varchar](200) NULL,
	[DEPARTMENT] [varchar](50) NULL,
	[REAL_NAME] [varchar](20) NULL,
	[PARAMS] [varchar](200) NULL,
	[METHOD] [varchar](200) NULL,
	[USER_ID] [varchar](255) NULL,
	[CATEGORY] [varchar](10) NULL,
	[LOG_DATETIME] [datetime] NULL,
	[URL] [varchar](100) NULL,
	[TITLE] [varchar](100) NULL,
	[CONTENT] [varchar](255) NULL,
 CONSTRAINT [PK_SYS_LOG] PRIMARY KEY CLUSTERED 
(
	[SYS_LOG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_member]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_member](
	[member_id] [int] NOT NULL,
	[group_id] [int] NULL,
	[username] [varchar](100) NULL,
	[password] [varchar](100) NULL,
	[realname] [varchar](100) NULL,
	[gender] [int] NULL,
	[birthdate] [date] NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](50) NULL,
	[address] [varchar](255) NULL,
	[qq] [int] NULL,
	[intro] [varchar](255) NULL,
	[register_ip] [varchar](50) NULL,
	[register_time] [date] NULL,
	[last_login_ip] [varchar](100) NULL,
	[last_login_time] [date] NULL,
	[login_account] [varchar](100) NULL,
	[status] [varchar](10) NULL,
	[idCard] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_PRIVILEGE]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_PRIVILEGE](
	[SYS_PRIVILEGE_ID] [varchar](50) NOT NULL,
	[PRIVILEGE_CODE] [varchar](100) NULL,
	[PRIVILEGE_NAME] [varchar](100) NULL,
	[DESCRIPTION] [varchar](500) NULL,
	[USERS_COUNT] [int] NULL,
	[ROLES_COUNT] [int] NULL,
	[ALL_USERS_COUNT] [int] NULL,
	[DEPARTMENTS_COUNT] [int] NULL,
	[DISPLAY_ORDER] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SYS_PRIVILEGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_PRIVILEGE_NAME] UNIQUE NONCLUSTERED 
(
	[PRIVILEGE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_ROLE]    Script Date: 2015/10/28 9:23:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_ROLE](
	[SYS_ROLE_ID] [varchar](50) NOT NULL,
	[ROLE_NAME] [varchar](100) NOT NULL,
	[DESCRIPTION] [varchar](500) NULL,
	[USERS_COUNT] [int] NULL,
	[PRIVILEGES_COUNT] [int] NULL,
	[DEPARTMENTS_COUNT] [int] NULL,
	[CREATE_BY] [varchar](100) NOT NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[UPDATE_BY] [varchar](100) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[DATAACCESSID] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SYS_ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_ROLE_NAME] UNIQUE NONCLUSTERED 
(
	[ROLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_ROLE_TO_PRIVILEGE]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_ROLE_TO_PRIVILEGE](
	[SYS_ROLE_ID] [varchar](50) NOT NULL,
	[SYS_PRIVILEGE_ID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SYS_ROLE_ID] ASC,
	[SYS_PRIVILEGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_USER]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_USER](
	[SYS_USER_ID] [varchar](50) NOT NULL,
	[USERNAME] [varchar](100) NOT NULL,
	[PASSWORD] [varchar](100) NOT NULL,
	[ENABLED] [char](1) NOT NULL,
	[STATE] [varchar](4) NOT NULL,
	[ROLES_COUNT] [int] NULL,
	[PRIVILEGES_COUNT] [int] NULL,
	[CREATE_BY] [varchar](100) NOT NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[UPDATE_BY] [varchar](100) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[SYS_DEPARTMENT_ID] [varchar](50) NULL,
	[GENDER] [char](1) NOT NULL,
	[REAL_NAME] [varchar](50) NULL,
	[ID_CARD] [varchar](20) NULL,
	[ADDRESS] [varchar](255) NULL,
	[EMAIL] [varchar](100) NULL,
	[PHONE_NUMBER] [varchar](100) NULL,
	[GROUP_ID] [int] NULL,
	[REALNAME] [varchar](100) NULL,
	[BIRTHDATE] [date] NULL,
	[QQ] [int] NULL,
	[REGISTER_IP] [varchar](200) NULL,
	[REGISTER_TIME] [date] NULL,
	[LAST_LOGIN_IP] [varchar](100) NULL,
	[LAST_LOGIN_TIME] [date] NULL,
	[LOGIN_ACCOUNT] [varchar](100) NULL,
	[INTRO] [varchar](250) NULL,
	[DATAACCESSID] [varchar](50) NULL,
 CONSTRAINT [PK__SYS_USER__2B4E4E5C2B3F6F97] PRIMARY KEY CLUSTERED 
(
	[SYS_USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_USER_TO_PRIVILEGE]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_USER_TO_PRIVILEGE](
	[sys_user_id] [varchar](50) NOT NULL,
	[sys_privilege_id] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sys_user_id] ASC,
	[sys_privilege_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYS_USER_TO_ROLE]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYS_USER_TO_ROLE](
	[SYS_USER_ID] [varchar](50) NOT NULL,
	[SYS_ROLE_ID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SYS_USER_ID] ASC,
	[SYS_ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tag]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tag](
	[tag_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[is_disabled] [int] NULL,
	[create_time] [datetime] NULL,
 CONSTRAINT [PK__tag__4296A2B66E8B6712] PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[template_group]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[template_group](
	[template_group_id] [int] NOT NULL,
	[cur_path] [varchar](255) NULL,
	[pre_path] [varchar](255) NULL,
	[creator_id] [int] NULL,
	[create_time] [date] NULL,
	[updator_id] [int] NULL,
	[update_time] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[template_group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USER_ROLE]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USER_ROLE](
	[user_role_id] [int] NOT NULL,
	[user_id] [varchar](50) NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_USER_ROLE] PRIMARY KEY CLUSTERED 
(
	[user_role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workflow]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workflow](
	[workflow_id] [int] NOT NULL,
	[name] [varchar](512) NULL,
	[description] [varchar](512) NULL,
	[priority] [int] NULL,
	[type] [varchar](10) NULL,
	[is_current] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[workflow_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workflow_history]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workflow_history](
	[workflow_history_id] [int] NOT NULL,
	[content_id] [int] NOT NULL,
	[user_id] [varchar](50) NULL,
	[stage] [int] NULL,
	[status] [varchar](10) NULL,
	[summary] [varchar](512) NULL,
	[create_time] [date] NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK__workflow__196178C120E1DCB5] PRIMARY KEY CLUSTERED 
(
	[workflow_history_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workflow_priority]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workflow_priority](
	[workflow_priority_id] [int] NOT NULL,
	[workflow_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
	[priority] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[workflow_priority_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[QTXX]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[QTXX](ZZJGDM,QYMC,GSZCH,RDMC,RDJB,RDZSBH,RDRQ,RDYXQ,RDJGMC,BZMC,BZJB,BZBM,BZRQ,PZWH,BZNR,RYCH,DQ,ND,LAIYUANBUMEN,CREATETIME) as SELECT ZZJGDM,QYMC,GSZCH,RDMC,RDJB,RDZSBH,RDRQ,RDYXQ,RDJGMC,null BZMC,null BZJB,null BZBM,null BZRQ,null PZWH,null BZNR,null RYCH,null DQ,null ND,LAIYUANBUMEN,CREATETIME FROM BUS_ZXQYFWZX_QYRDXX UNION SELECT ZZJGDM,QYMC,GSZCH,null RDMC,null RDJB,null RDZSBH,null RDRQ,null RDYXQ,null RDJGMC,null BZMC,null BZJB,BZBM,null BZRQ,null PZWH,null BZNR,null RYCH,null DQ,null ND,LAIYUANBUMEN,CREATETIME FROM BUS_ZJJ_RYBZXX UNION SELECT ZZJGDM,QYMC,GSZCH,null RDMC,null RDJB,null RDZSBH,null RDRQ,null RDYXQ,null RDJGMC,BZMC,BZJB,BZBM,BZRQ,null PZWH,null BZNR,null RYCH,null DQ,null ND,LAIYUANBUMEN,CREATETIME FROM BUS_ZXQYFWZX_QYSBZXX 
GO
/****** Object:  View [dbo].[RYBZXX]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[RYBZXX](GSZCH,QYMC,ZZJGDM,LAIYUANBUMEN,CREATETIME) as SELECT null GSZCH,QYMC,null ZZJGDM,LAIYUANBUMEN,CREATETIME FROM BUS_DSJ_RYBZXX UNION SELECT GSZCH,null QYMC,null ZZJGDM,LAIYUANBUMEN,CREATETIME FROM BUS_GSJ_RYBZXX UNION SELECT null GSZCH,null QYMC,ZZJGDM,LAIYUANBUMEN,CREATETIME FROM BUS_ZJJ_RYBZXX 
GO
/****** Object:  View [dbo].[SXXWXX]    Script Date: 2015/10/28 9:23:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[SXXWXX](ZZJGDM,QYMC,GSZCH,CFMC,CFJDWSH,BCFDSR,BCFDSRZJHM,CFSY,CFZL,XZCFYJ,XZCFJL,SXDJ,CFJGQC,XZCFRQ,SFGS,GSQRQ,GSZRQ,ZXWCRQ,ZXQK,LAIYUANBUMEN,CREATETIME) as SELECT ZZJGDM,QYMC,GSZCH,CFMC,CFJDWSH,BCFDSR,BCFDSRZJHM,CFSY,CFZL,XZCFYJ,XZCFJL,SXDJ,CFJGQC,XZCFRQ,SFGS,GSQRQ,GSZRQ,ZXWCRQ,ZXQK,LAIYUANBUMEN,CREATETIME FROM BUS_ZJJ_SXXWXX 
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__model_i__05F8DC4F] FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__model_i__05F8DC4F]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__model_i__1BE81D6E] FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__model_i__1BE81D6E]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__model_i__2B5F6B28] FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__model_i__2B5F6B28]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__model_i__3C89F72A] FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__model_i__3C89F72A]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__model_i__4F9CCB9E] FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__model_i__4F9CCB9E]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__model_i__61BB7BD9] FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__model_i__61BB7BD9]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__model_i__73DA2C14] FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__model_i__73DA2C14]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__parent___0D99FE17] FOREIGN KEY([parent_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__parent___0D99FE17]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__parent___23893F36] FOREIGN KEY([parent_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__parent___23893F36]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__parent___33008CF0] FOREIGN KEY([parent_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__parent___33008CF0]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__parent___442B18F2] FOREIGN KEY([parent_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__parent___442B18F2]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__parent___573DED66] FOREIGN KEY([parent_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__parent___573DED66]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__parent___695C9DA1] FOREIGN KEY([parent_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__parent___695C9DA1]
GO
ALTER TABLE [dbo].[CHANNEL]  WITH CHECK ADD  CONSTRAINT [FK__CHANNEL__parent___7B7B4DDC] FOREIGN KEY([parent_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[CHANNEL] CHECK CONSTRAINT [FK__CHANNEL__parent___7B7B4DDC]
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD  CONSTRAINT [FK__channel_m__chann__0BB1B5A5] FOREIGN KEY([channel_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[channel_model] CHECK CONSTRAINT [FK__channel_m__chann__0BB1B5A5]
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD  CONSTRAINT [FK__channel_m__chann__21A0F6C4] FOREIGN KEY([channel_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[channel_model] CHECK CONSTRAINT [FK__channel_m__chann__21A0F6C4]
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD  CONSTRAINT [FK__channel_m__chann__3118447E] FOREIGN KEY([channel_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[channel_model] CHECK CONSTRAINT [FK__channel_m__chann__3118447E]
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD  CONSTRAINT [FK__channel_m__chann__4242D080] FOREIGN KEY([channel_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[channel_model] CHECK CONSTRAINT [FK__channel_m__chann__4242D080]
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD  CONSTRAINT [FK__channel_m__chann__5555A4F4] FOREIGN KEY([channel_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[channel_model] CHECK CONSTRAINT [FK__channel_m__chann__5555A4F4]
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD  CONSTRAINT [FK__channel_m__chann__6774552F] FOREIGN KEY([channel_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[channel_model] CHECK CONSTRAINT [FK__channel_m__chann__6774552F]
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD  CONSTRAINT [FK__channel_m__chann__7993056A] FOREIGN KEY([channel_id])
REFERENCES [dbo].[CHANNEL] ([channel_id])
GO
ALTER TABLE [dbo].[channel_model] CHECK CONSTRAINT [FK__channel_m__chann__7993056A]
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[channel_model]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__content__0504B816] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[content_type] ([content_type_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__content__0504B816]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__content__1AF3F935] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[content_type] ([content_type_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__content__1AF3F935]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__content__2A6B46EF] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[content_type] ([content_type_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__content__2A6B46EF]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__content__3B95D2F1] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[content_type] ([content_type_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__content__3B95D2F1]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__content__4EA8A765] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[content_type] ([content_type_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__content__4EA8A765]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__content__60C757A0] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[content_type] ([content_type_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__content__60C757A0]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__content__7132C993] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[content_type] ([content_type_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__content__7132C993]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__content__72E607DB] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[content_type] ([content_type_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__content__72E607DB]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__group_i__0E8E2250] FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__group_i__0E8E2250]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__group_i__247D636F] FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__group_i__247D636F]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__group_i__33F4B129] FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__group_i__33F4B129]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__group_i__451F3D2B] FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__group_i__451F3D2B]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__group_i__5832119F] FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__group_i__5832119F]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__group_i__6A50C1DA] FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__group_i__6A50C1DA]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FK__content__group_i__7C6F7215] FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FK__content__group_i__7C6F7215]
GO
ALTER TABLE [dbo].[content_comment]  WITH CHECK ADD  CONSTRAINT [FK__content_c__conte__1446FBA6] FOREIGN KEY([content_id])
REFERENCES [dbo].[content] ([content_id])
GO
ALTER TABLE [dbo].[content_comment] CHECK CONSTRAINT [FK__content_c__conte__1446FBA6]
GO
ALTER TABLE [dbo].[content_comment]  WITH CHECK ADD  CONSTRAINT [FK__content_c__conte__2A363CC5] FOREIGN KEY([content_id])
REFERENCES [dbo].[content] ([content_id])
GO
ALTER TABLE [dbo].[content_comment] CHECK CONSTRAINT [FK__content_c__conte__2A363CC5]
GO
ALTER TABLE [dbo].[content_comment]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[content_comment] ([content_comment_id])
GO
ALTER TABLE [dbo].[content_comment]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[content_comment] ([content_comment_id])
GO
ALTER TABLE [dbo].[content_comment]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[content_comment] ([content_comment_id])
GO
ALTER TABLE [dbo].[content_comment]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[content_comment] ([content_comment_id])
GO
ALTER TABLE [dbo].[content_comment]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[content_comment] ([content_comment_id])
GO
ALTER TABLE [dbo].[content_comment]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[content_comment] ([content_comment_id])
GO
ALTER TABLE [dbo].[content_comment]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[content_comment] ([content_comment_id])
GO
ALTER TABLE [dbo].[friendlylink]  WITH CHECK ADD FOREIGN KEY([friendlylink_type_id])
REFERENCES [dbo].[friendlylink_type] ([friendlylink_type_id])
GO
ALTER TABLE [dbo].[friendlylink]  WITH CHECK ADD FOREIGN KEY([friendlylink_type_id])
REFERENCES [dbo].[friendlylink_type] ([friendlylink_type_id])
GO
ALTER TABLE [dbo].[friendlylink]  WITH CHECK ADD FOREIGN KEY([friendlylink_type_id])
REFERENCES [dbo].[friendlylink_type] ([friendlylink_type_id])
GO
ALTER TABLE [dbo].[friendlylink]  WITH CHECK ADD FOREIGN KEY([friendlylink_type_id])
REFERENCES [dbo].[friendlylink_type] ([friendlylink_type_id])
GO
ALTER TABLE [dbo].[friendlylink]  WITH CHECK ADD FOREIGN KEY([friendlylink_type_id])
REFERENCES [dbo].[friendlylink_type] ([friendlylink_type_id])
GO
ALTER TABLE [dbo].[friendlylink]  WITH CHECK ADD FOREIGN KEY([friendlylink_type_id])
REFERENCES [dbo].[friendlylink_type] ([friendlylink_type_id])
GO
ALTER TABLE [dbo].[friendlylink]  WITH CHECK ADD FOREIGN KEY([friendlylink_type_id])
REFERENCES [dbo].[friendlylink_type] ([friendlylink_type_id])
GO
ALTER TABLE [dbo].[friendlylink]  WITH CHECK ADD FOREIGN KEY([friendlylink_type_id])
REFERENCES [dbo].[friendlylink_type] ([friendlylink_type_id])
GO
ALTER TABLE [dbo].[model_item]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[model_item]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[model_item]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[model_item]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[model_item]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[model_item]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[model_item]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[model_item]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[model_item]  WITH CHECK ADD FOREIGN KEY([model_id])
REFERENCES [dbo].[model] ([model_id])
GO
ALTER TABLE [dbo].[reply]  WITH CHECK ADD FOREIGN KEY([message_id])
REFERENCES [dbo].[message] ([message_id])
GO
ALTER TABLE [dbo].[reply]  WITH CHECK ADD FOREIGN KEY([message_id])
REFERENCES [dbo].[message] ([message_id])
GO
ALTER TABLE [dbo].[reply]  WITH CHECK ADD FOREIGN KEY([message_id])
REFERENCES [dbo].[message] ([message_id])
GO
ALTER TABLE [dbo].[reply]  WITH CHECK ADD FOREIGN KEY([message_id])
REFERENCES [dbo].[message] ([message_id])
GO
ALTER TABLE [dbo].[reply]  WITH CHECK ADD FOREIGN KEY([message_id])
REFERENCES [dbo].[message] ([message_id])
GO
ALTER TABLE [dbo].[reply]  WITH CHECK ADD FOREIGN KEY([message_id])
REFERENCES [dbo].[message] ([message_id])
GO
ALTER TABLE [dbo].[reply]  WITH CHECK ADD FOREIGN KEY([message_id])
REFERENCES [dbo].[message] ([message_id])
GO
ALTER TABLE [dbo].[reply]  WITH CHECK ADD FOREIGN KEY([message_id])
REFERENCES [dbo].[message] ([message_id])
GO
ALTER TABLE [dbo].[reply]  WITH CHECK ADD FOREIGN KEY([message_id])
REFERENCES [dbo].[message] ([message_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([authority_id])
REFERENCES [dbo].[authority] ([authority_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([authority_id])
REFERENCES [dbo].[authority] ([authority_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([authority_id])
REFERENCES [dbo].[authority] ([authority_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([authority_id])
REFERENCES [dbo].[authority] ([authority_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([authority_id])
REFERENCES [dbo].[authority] ([authority_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([authority_id])
REFERENCES [dbo].[authority] ([authority_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([authority_id])
REFERENCES [dbo].[authority] ([authority_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([authority_id])
REFERENCES [dbo].[authority] ([authority_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[role_authority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[sys_group]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_group]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_group]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_group]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_group]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_group]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_group]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_group]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_group]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_member]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_member]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_member]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_member]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_member]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_member]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_member]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_member]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[sys_member]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[SYS_ROLE_TO_PRIVILEGE]  WITH CHECK ADD FOREIGN KEY([SYS_PRIVILEGE_ID])
REFERENCES [dbo].[SYS_PRIVILEGE] ([SYS_PRIVILEGE_ID])
GO
ALTER TABLE [dbo].[SYS_ROLE_TO_PRIVILEGE]  WITH CHECK ADD FOREIGN KEY([SYS_ROLE_ID])
REFERENCES [dbo].[SYS_ROLE] ([SYS_ROLE_ID])
GO
ALTER TABLE [dbo].[SYS_USER]  WITH CHECK ADD  CONSTRAINT [FK__SYS_USER__SYS_DE__403A8C7D] FOREIGN KEY([SYS_DEPARTMENT_ID])
REFERENCES [dbo].[SYS_DEPARTMENT] ([SYS_DEPARTMENT_ID])
GO
ALTER TABLE [dbo].[SYS_USER] CHECK CONSTRAINT [FK__SYS_USER__SYS_DE__403A8C7D]
GO
ALTER TABLE [dbo].[SYS_USER]  WITH CHECK ADD  CONSTRAINT [FKA510FE1D2FBEF80E] FOREIGN KEY([GROUP_ID])
REFERENCES [dbo].[sys_group] ([group_id])
GO
ALTER TABLE [dbo].[SYS_USER] CHECK CONSTRAINT [FKA510FE1D2FBEF80E]
GO
ALTER TABLE [dbo].[SYS_USER_TO_PRIVILEGE]  WITH CHECK ADD FOREIGN KEY([sys_privilege_id])
REFERENCES [dbo].[SYS_PRIVILEGE] ([SYS_PRIVILEGE_ID])
GO
ALTER TABLE [dbo].[SYS_USER_TO_PRIVILEGE]  WITH CHECK ADD FOREIGN KEY([sys_privilege_id])
REFERENCES [dbo].[SYS_PRIVILEGE] ([SYS_PRIVILEGE_ID])
GO
ALTER TABLE [dbo].[SYS_USER_TO_PRIVILEGE]  WITH CHECK ADD FOREIGN KEY([sys_privilege_id])
REFERENCES [dbo].[SYS_PRIVILEGE] ([SYS_PRIVILEGE_ID])
GO
ALTER TABLE [dbo].[SYS_USER_TO_PRIVILEGE]  WITH CHECK ADD FOREIGN KEY([sys_privilege_id])
REFERENCES [dbo].[SYS_PRIVILEGE] ([SYS_PRIVILEGE_ID])
GO
ALTER TABLE [dbo].[SYS_USER_TO_PRIVILEGE]  WITH CHECK ADD FOREIGN KEY([sys_user_id])
REFERENCES [dbo].[SYS_USER] ([SYS_USER_ID])
GO
ALTER TABLE [dbo].[SYS_USER_TO_PRIVILEGE]  WITH CHECK ADD FOREIGN KEY([sys_user_id])
REFERENCES [dbo].[SYS_USER] ([SYS_USER_ID])
GO
ALTER TABLE [dbo].[SYS_USER_TO_PRIVILEGE]  WITH CHECK ADD FOREIGN KEY([sys_user_id])
REFERENCES [dbo].[SYS_USER] ([SYS_USER_ID])
GO
ALTER TABLE [dbo].[SYS_USER_TO_PRIVILEGE]  WITH CHECK ADD FOREIGN KEY([sys_user_id])
REFERENCES [dbo].[SYS_USER] ([SYS_USER_ID])
GO
ALTER TABLE [dbo].[SYS_USER_TO_ROLE]  WITH CHECK ADD FOREIGN KEY([SYS_ROLE_ID])
REFERENCES [dbo].[SYS_ROLE] ([SYS_ROLE_ID])
GO
ALTER TABLE [dbo].[SYS_USER_TO_ROLE]  WITH CHECK ADD  CONSTRAINT [FK__SYS_USER___SYS_U__440B1D61] FOREIGN KEY([SYS_USER_ID])
REFERENCES [dbo].[SYS_USER] ([SYS_USER_ID])
GO
ALTER TABLE [dbo].[SYS_USER_TO_ROLE] CHECK CONSTRAINT [FK__SYS_USER___SYS_U__440B1D61]
GO
ALTER TABLE [dbo].[USER_ROLE]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[USER_ROLE]  WITH CHECK ADD  CONSTRAINT [FK__USER_ROLE__user___2FEF161B] FOREIGN KEY([user_id])
REFERENCES [dbo].[SYS_USER] ([SYS_USER_ID])
GO
ALTER TABLE [dbo].[USER_ROLE] CHECK CONSTRAINT [FK__USER_ROLE__user___2FEF161B]
GO
ALTER TABLE [dbo].[workflow_history]  WITH CHECK ADD  CONSTRAINT [FK__workflow___conte__1352D76D] FOREIGN KEY([content_id])
REFERENCES [dbo].[content] ([content_id])
GO
ALTER TABLE [dbo].[workflow_history] CHECK CONSTRAINT [FK__workflow___conte__1352D76D]
GO
ALTER TABLE [dbo].[workflow_history]  WITH CHECK ADD  CONSTRAINT [FK__workflow___conte__2942188C] FOREIGN KEY([content_id])
REFERENCES [dbo].[content] ([content_id])
GO
ALTER TABLE [dbo].[workflow_history] CHECK CONSTRAINT [FK__workflow___conte__2942188C]
GO
ALTER TABLE [dbo].[workflow_history]  WITH CHECK ADD  CONSTRAINT [FK9FB4AFF4DF0C28A6] FOREIGN KEY([user_id])
REFERENCES [dbo].[SYS_USER] ([SYS_USER_ID])
GO
ALTER TABLE [dbo].[workflow_history] CHECK CONSTRAINT [FK9FB4AFF4DF0C28A6]
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([workflow_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([workflow_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([workflow_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([workflow_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([workflow_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([workflow_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([workflow_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([workflow_id])
GO
ALTER TABLE [dbo].[workflow_priority]  WITH CHECK ADD FOREIGN KEY([workflow_id])
REFERENCES [dbo].[workflow] ([workflow_id])
GO
USE [master]
GO
ALTER DATABASE [sipcredit_cms] SET  READ_WRITE 
GO
