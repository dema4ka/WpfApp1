USE [master]
GO
/****** Object:  Database [520_demidovkval]    Script Date: 15.04.2024 15:28:55 ******/
CREATE DATABASE [520_demidovkval]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'520_demidovkval', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\520_demidovkval.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'520_demidovkval_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\520_demidovkval_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [520_demidovkval] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [520_demidovkval].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [520_demidovkval] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [520_demidovkval] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [520_demidovkval] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [520_demidovkval] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [520_demidovkval] SET ARITHABORT OFF 
GO
ALTER DATABASE [520_demidovkval] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [520_demidovkval] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [520_demidovkval] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [520_demidovkval] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [520_demidovkval] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [520_demidovkval] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [520_demidovkval] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [520_demidovkval] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [520_demidovkval] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [520_demidovkval] SET  DISABLE_BROKER 
GO
ALTER DATABASE [520_demidovkval] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [520_demidovkval] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [520_demidovkval] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [520_demidovkval] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [520_demidovkval] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [520_demidovkval] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [520_demidovkval] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [520_demidovkval] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [520_demidovkval] SET  MULTI_USER 
GO
ALTER DATABASE [520_demidovkval] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [520_demidovkval] SET DB_CHAINING OFF 
GO
ALTER DATABASE [520_demidovkval] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [520_demidovkval] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [520_demidovkval] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [520_demidovkval] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [520_demidovkval] SET QUERY_STORE = OFF
GO
USE [520_demidovkval]
GO
/****** Object:  Table [dbo].[City]    Script Date: 15.04.2024 15:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 15.04.2024 15:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Code2] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Name_Eng] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 15.04.2024 15:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[Days] [int] NOT NULL,
	[City_ID] [int] NOT NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jury]    Script Date: 15.04.2024 15:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jury](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Patronymic] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Date_birth] [date] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Tel] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Gender] [nvarchar](1) NOT NULL,
	[SpecialityID] [int] NOT NULL,
 CONSTRAINT [PK_Jury] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moderators]    Script Date: 15.04.2024 15:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moderators](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Patronymic] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](1) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Date_birth] [date] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Tel] [nvarchar](max) NOT NULL,
	[SpecialityID] [int] NOT NULL,
	[Event] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Moderators] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizers]    Script Date: 15.04.2024 15:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizers](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Patronymic] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Date_birth] [date] NOT NULL,
	[Country_ID] [int] NOT NULL,
	[Tel] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Gender] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Organizers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participants]    Script Date: 15.04.2024 15:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participants](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Patronymic] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Date_birth] [date] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Tel] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Gender] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Participants] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialities]    Script Date: 15.04.2024 15:28:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialities](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_Specialities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_City] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_City]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Country]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Specialities] FOREIGN KEY([SpecialityID])
REFERENCES [dbo].[Specialities] ([ID])
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Specialities]
GO
ALTER TABLE [dbo].[Moderators]  WITH CHECK ADD  CONSTRAINT [FK_Moderators_Specialities] FOREIGN KEY([SpecialityID])
REFERENCES [dbo].[Specialities] ([ID])
GO
ALTER TABLE [dbo].[Moderators] CHECK CONSTRAINT [FK_Moderators_Specialities]
GO
ALTER TABLE [dbo].[Organizers]  WITH CHECK ADD  CONSTRAINT [FK_Organizers_Country] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Organizers] CHECK CONSTRAINT [FK_Organizers_Country]
GO
ALTER TABLE [dbo].[Participants]  WITH CHECK ADD  CONSTRAINT [FK_Participants_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Participants] CHECK CONSTRAINT [FK_Participants_Country]
GO
USE [master]
GO
ALTER DATABASE [520_demidovkval] SET  READ_WRITE 
GO
