USE [master]
GO
/****** Object:  Database [CityCountryDB]    Script Date: 13-Jun-15 2:15:27 PM ******/
CREATE DATABASE [CityCountryDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CityCountryDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CityCountryDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CityCountryDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CityCountryDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CityCountryDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CityCountryDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CityCountryDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CityCountryDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CityCountryDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CityCountryDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CityCountryDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CityCountryDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CityCountryDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CityCountryDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CityCountryDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CityCountryDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CityCountryDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CityCountryDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CityCountryDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CityCountryDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CityCountryDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CityCountryDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CityCountryDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CityCountryDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CityCountryDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CityCountryDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CityCountryDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CityCountryDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CityCountryDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CityCountryDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CityCountryDB] SET  MULTI_USER 
GO
ALTER DATABASE [CityCountryDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CityCountryDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CityCountryDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CityCountryDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CityCountryDB]
GO
/****** Object:  Table [dbo].[tbl_city]    Script Date: 13-Jun-15 2:15:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_city](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NOT NULL,
	[AboutCity] [varchar](500) NULL,
	[Dwellers] [bigint] NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[Weather] [varchar](50) NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_city] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_country]    Script Date: 13-Jun-15 2:15:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
	[AboutCountry] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_city] ON 

INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (3, N'Dhaka', N'sfsdf', 12000000, N'it is located at the center of bd', N'sdfasdf', 1)
INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (4, N'Jamalpur', N'Beautiful City', 6500000, N'North site of Bangladesh', N'Warm', 1)
INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (5, N'Saidpur', N'', 6500000, N'North site of Bangladesh', N'Warm', 1)
INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (6, N'Bogura', N'Historical place', 18300128, N'North site of Bangladesh', N'Sunny ', 1)
INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (7, N'New York', N'city of USA', 312312309, N'North', N'Cold', 3)
INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (8, N'Kolikata', N'', 44820349, N'North', N'worm', 6)
INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (9, N'khulna ', N'<p>According to the The Calcutta Gazettee, <em>Khulna</em> was declared as municipality on September 8, 1884 by the then Governor,</p>', 44820349, N'North', N'<p>Sunny</p>', 1)
INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (15, N'Delhi', N'<p>Delhi is the most polluted<sup id="cite_ref-62"><a href="https://en.wikipedia.org/wiki/Delhi#cite_note-62">[62]</a></sup> city in the world </p>', 12478447, N'South', N'<p>Widely scattered tstorms. Mostly cloudy.</p>', 6)
INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (22, N'Bangalore', N'<p>dfgadfga</p>', 8425970, N'North', N'<p>Mostly cloudy.</p>', 6)
INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (23, N'Kabul', N'<p>The only city in <a href="https://en.wikipedia.org/wiki/Afghanistan" title="Afghanistan">Afghanistan</a> with over 1 million population is its capital</p>', 3289000, N'North', N'<p>Mostly cloudy.</p>', 14)
INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (24, N'Los Angeles', N'<p>Nicknamed the <i>City of Angel''s</i></p>', 3928864, N'28°36''36?N 77°13''48?E', N'<p>sdfsffsdf''df</p>', 3)
INSERT [dbo].[tbl_city] ([id], [CityName], [AboutCity], [Dwellers], [Location], [Weather], [CountryId]) VALUES (25, N'Manikgonj', N'<p>It''s&nbsp;Beautiful city</p>', 3928864, N'28°36''36?N 77°13''48?E', N'<p>28°C Warm</p>', 1)
SET IDENTITY_INSERT [dbo].[tbl_city] OFF
SET IDENTITY_INSERT [dbo].[tbl_country] ON 

INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (1, N'Bangladesh', N'It is the most beautiful country in the world.')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (3, N'USA', N'It is a capitalized country')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (4, N'Africa', N'All people are Black')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (6, N'India', N'flaldjalsdj')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (7, N'Honduras ', N'Most favorite play is football  ')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (8, N'Denmark', N'sldfjlsdjl')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (9, N'Japan', N'Capitalized Country ')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (10, N'UK', N'United Kingdom')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (11, N'UAE', N'United Arab Emirates')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (12, N'Malaysia', N'Malaysia has its origins in the Malay kingdoms present in the area')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (13, N'Iran', N'Iran is home to one of the oldest civilizations')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (14, N'Afghanistan', N'Human habitation in Afghanistan dates back to the Middle Paleolithic Era')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (15, N'Albania', N'Albania is a member of the United Nations')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (16, N'Algeria', N'The territory of today Algeria was the home of many prehistoric cultures')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (17, N'Andorra', N'Please visit Andorra  ')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (18, N'Angola', N'Please visit Angola  ')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (19, N'Pakistan', N'')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (20, N'Malaysha', N'<p><span style="background-color: rgb(26, 188, 156); color: rgb(226, 80, 65); font-family: Arial,Helvetica;"><strike><strong>vzdvzcv</strong></strike></span></p>')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (21, N'Argentina', N'<p>It''s most beautiful country.</p>')
INSERT [dbo].[tbl_country] ([id], [CountryName], [AboutCountry]) VALUES (22, N'', N'<p>dsad</p>')
SET IDENTITY_INSERT [dbo].[tbl_country] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_city]    Script Date: 13-Jun-15 2:15:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_city] ON [dbo].[tbl_city]
(
	[CityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_country]    Script Date: 13-Jun-15 2:15:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_country] ON [dbo].[tbl_country]
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_city]  WITH CHECK ADD  CONSTRAINT [FK_tbl_city_tbl_country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[tbl_country] ([id])
GO
ALTER TABLE [dbo].[tbl_city] CHECK CONSTRAINT [FK_tbl_city_tbl_country]
GO
USE [master]
GO
ALTER DATABASE [CityCountryDB] SET  READ_WRITE 
GO
