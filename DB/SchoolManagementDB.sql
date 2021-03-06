USE [master]
GO
/****** Object:  Database [SchoolManagementDB]    Script Date: 10-Apr-16 1:33:24 AM ******/
CREATE DATABASE [SchoolManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SchoolManagementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SchoolManagementDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SchoolManagementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SchoolManagementDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SchoolManagementDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SchoolManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SchoolManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SchoolManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SchoolManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SchoolManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SchoolManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [SchoolManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SchoolManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SchoolManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SchoolManagementDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SchoolManagementDB]
GO
/****** Object:  Table [dbo].[tbl_blood]    Script Date: 10-Apr-16 1:33:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_blood](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[blood_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_blood] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_class]    Script Date: 10-Apr-16 1:33:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_class](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [nvarchar](50) NOT NULL,
	[class_code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_class] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_district]    Script Date: 10-Apr-16 1:33:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_district](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[district_name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_district] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_religion]    Script Date: 10-Apr-16 1:33:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_religion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[religion] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_religion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_student]    Script Date: 10-Apr-16 1:33:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stu_name] [nvarchar](150) NOT NULL,
	[stu_class_id] [int] NOT NULL,
	[stu_section] [nvarchar](50) NOT NULL,
	[stu_session] [nvarchar](50) NULL,
	[stu_gender] [nvarchar](50) NOT NULL,
	[stu_dob] [nvarchar](50) NOT NULL,
	[stu_address] [nvarchar](max) NOT NULL,
	[district_id] [int] NOT NULL,
	[upazila_id] [int] NOT NULL,
	[blood_group_id] [int] NULL,
	[religion_id] [int] NOT NULL,
	[stu_contact] [nvarchar](50) NOT NULL,
	[stu_father_name] [nvarchar](150) NOT NULL,
	[stu_mother_name] [nvarchar](150) NOT NULL,
	[father_contact] [nvarchar](50) NOT NULL,
	[stu_guardian_name] [nvarchar](150) NOT NULL,
	[stu_guardian_profession] [nvarchar](150) NOT NULL,
	[stu_guardian_contact] [nvarchar](50) NOT NULL,
	[stu_img] [nvarchar](350) NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_subject]    Script Date: 10-Apr-16 1:33:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_subject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sub_name] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_upazila]    Script Date: 10-Apr-16 1:33:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_upazila](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[upazila_name] [nvarchar](250) NOT NULL,
	[district_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_upazila] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 10-Apr-16 1:33:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [nvarchar](50) NOT NULL,
	[user_pass] [nvarchar](max) NOT NULL,
	[user_email] [nvarchar](50) NOT NULL,
	[user_type] [nvarchar](50) NOT NULL,
	[retryAttemps] [int] NOT NULL,
	[isLocked] [bit] NOT NULL,
	[lockedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_blood] ON 

INSERT [dbo].[tbl_blood] ([id], [blood_name]) VALUES (1, N'O+')
INSERT [dbo].[tbl_blood] ([id], [blood_name]) VALUES (2, N'O-')
INSERT [dbo].[tbl_blood] ([id], [blood_name]) VALUES (3, N'A+')
INSERT [dbo].[tbl_blood] ([id], [blood_name]) VALUES (4, N'A-')
INSERT [dbo].[tbl_blood] ([id], [blood_name]) VALUES (5, N'B+')
INSERT [dbo].[tbl_blood] ([id], [blood_name]) VALUES (6, N'B-')
INSERT [dbo].[tbl_blood] ([id], [blood_name]) VALUES (7, N'AB+')
INSERT [dbo].[tbl_blood] ([id], [blood_name]) VALUES (8, N'AB-')
INSERT [dbo].[tbl_blood] ([id], [blood_name]) VALUES (9, N'Unknown')
SET IDENTITY_INSERT [dbo].[tbl_blood] OFF
SET IDENTITY_INSERT [dbo].[tbl_class] ON 

INSERT [dbo].[tbl_class] ([id], [class_name], [class_code]) VALUES (1, N'One', N'i')
INSERT [dbo].[tbl_class] ([id], [class_name], [class_code]) VALUES (2, N'Two', N'ii')
INSERT [dbo].[tbl_class] ([id], [class_name], [class_code]) VALUES (3, N'Three', N'iii')
INSERT [dbo].[tbl_class] ([id], [class_name], [class_code]) VALUES (4, N'Four', N'iv')
INSERT [dbo].[tbl_class] ([id], [class_name], [class_code]) VALUES (5, N'Five', N'v')
INSERT [dbo].[tbl_class] ([id], [class_name], [class_code]) VALUES (6, N'Six', N'vi')
INSERT [dbo].[tbl_class] ([id], [class_name], [class_code]) VALUES (7, N'Seven', N'vii')
INSERT [dbo].[tbl_class] ([id], [class_name], [class_code]) VALUES (8, N'Eight', N'viii')
INSERT [dbo].[tbl_class] ([id], [class_name], [class_code]) VALUES (9, N'Nine', N'ix')
INSERT [dbo].[tbl_class] ([id], [class_name], [class_code]) VALUES (10, N'Ten', N'x')
SET IDENTITY_INSERT [dbo].[tbl_class] OFF
SET IDENTITY_INSERT [dbo].[tbl_district] ON 

INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (1, N'Barguna')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (2, N'Barisal')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (3, N'Bhola')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (4, N'Jhalokati')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (5, N'Patuakhali')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (6, N'Pirojpur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (7, N'Bandarban')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (8, N'Brahmanbaria')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (9, N'Chandpur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (10, N'Chittagong')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (11, N'Comilla')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (12, N'Coxs Bazar')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (13, N'Feni')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (14, N'Khagrachhari')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (15, N'Lakshmipur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (16, N'Noakhali')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (17, N'Rangamati')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (18, N'Dhaka')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (19, N'Faridpur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (20, N'Gazipur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (21, N'Gopalganj')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (22, N'Kishoreganj')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (23, N'Madaripur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (24, N'Manikganj')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (25, N'Munshiganj')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (26, N'Narayanganj')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (27, N'Narsingdi')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (28, N'Rajbari')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (29, N'Shariatpur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (30, N'Tangail')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (31, N'Bagerhat')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (32, N'Chuadanga')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (33, N'Jessore')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (34, N'Jhenaidah')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (35, N'Khulna')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (36, N'Kushtia')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (37, N'Magura')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (38, N'Meherpur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (39, N'Narail')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (40, N'Satkhira')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (41, N'Jamalpur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (42, N'Mymensingh')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (43, N'Netrakona')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (44, N'Sherpur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (45, N'Bogra')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (46, N'Joypurhat')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (47, N'Naogaon')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (48, N'Natore')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (49, N'Chapainawabganj')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (50, N'Pabna')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (51, N'Rajshahi')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (52, N'Sirajganj')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (53, N'Dinajpur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (54, N'Gaibandha')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (55, N'Kurigram')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (56, N'Lalmonirhat')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (57, N'Nilphamari')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (58, N'Panchagarh')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (59, N'Rangpur')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (60, N'Thakurgaon')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (61, N'Habiganj')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (62, N'Moulvibazar')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (63, N'Sunamganj')
INSERT [dbo].[tbl_district] ([id], [district_name]) VALUES (64, N'Sylhet')
SET IDENTITY_INSERT [dbo].[tbl_district] OFF
SET IDENTITY_INSERT [dbo].[tbl_religion] ON 

INSERT [dbo].[tbl_religion] ([id], [religion]) VALUES (1, N'Islam')
INSERT [dbo].[tbl_religion] ([id], [religion]) VALUES (2, N'Hinduism')
INSERT [dbo].[tbl_religion] ([id], [religion]) VALUES (3, N'Christianity')
INSERT [dbo].[tbl_religion] ([id], [religion]) VALUES (4, N'Buddhism')
INSERT [dbo].[tbl_religion] ([id], [religion]) VALUES (5, N'Others')
SET IDENTITY_INSERT [dbo].[tbl_religion] OFF
SET IDENTITY_INSERT [dbo].[tbl_student] ON 

INSERT [dbo].[tbl_student] ([id], [stu_name], [stu_class_id], [stu_section], [stu_session], [stu_gender], [stu_dob], [stu_address], [district_id], [upazila_id], [blood_group_id], [religion_id], [stu_contact], [stu_father_name], [stu_mother_name], [father_contact], [stu_guardian_name], [stu_guardian_profession], [stu_guardian_contact], [stu_img], [user_id]) VALUES (3, N'Kamrul Hasan', 10, N'A', N'2005-2006', N'Male', N'01-01-1991', N'Bagerhata, Bottala', 41, 362, 3, 1, N'01915358878', N'Mozibur Rahman', N'Shahina Parvin', N'01718647421', N'Mozibur Rahman', N'Gov. Officer', N'01718647421', N'~/images/Students/5.jpg', 3)
SET IDENTITY_INSERT [dbo].[tbl_student] OFF
SET IDENTITY_INSERT [dbo].[tbl_upazila] ON 

INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (1, N'Bagerhat Sadar', 31)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (2, N'Chitalmari', 31)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (3, N'Fakirhat', 31)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (4, N'Kachua', 31)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (5, N'Mollahat', 31)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (6, N'Mongla', 31)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (7, N'Morrelganj', 31)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (8, N'Rampal', 31)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (9, N'Sarankhola', 31)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (10, N'Alamdanga', 32)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (11, N'Chuadanga Sadar', 32)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (12, N'Damurhuda', 32)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (13, N'Jibannagar', 32)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (14, N'Abhaynagar', 33)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (15, N'Bagherpara', 33)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (16, N'Chaugachha', 33)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (17, N'Jhikargachha', 33)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (18, N'Keshabpur', 33)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (19, N'Jessore Sadar', 33)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (20, N'Manirampur', 33)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (21, N'Sharsha', 33)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (22, N'Harinakunda', 34)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (23, N'Jhenaidah Sadar', 34)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (24, N'Kaliganj', 34)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (25, N'Kotchandpur', 34)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (26, N'Maheshpur', 34)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (27, N'Shailkupa', 34)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (28, N'Batiaghata', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (29, N'Dacope', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (30, N'Dumuria', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (31, N'Dighalia', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (32, N'Koyra', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (33, N'Paikgachha', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (34, N'Phultala', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (35, N'Rupsha', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (36, N'Terokhada', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (37, N'Daulatpur', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (38, N'Khalishpur', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (39, N'Khan Jahan Ali', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (40, N'Kotwali', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (41, N'Sonadanga', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (42, N'Harintana', 35)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (43, N'Bheramara', 36)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (44, N'Daulatpur', 36)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (45, N'Khoksa', 36)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (46, N'Kumarkhali', 36)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (47, N'Kushtia Sadar', 36)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (48, N'Mirpur', 36)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (49, N'Shekhpara', 36)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (50, N'Magura Sadar', 37)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (51, N'Mohammadpur', 37)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (52, N'Shalikha', 37)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (53, N'Sreepur', 37)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (54, N'Gangni', 38)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (55, N'Meherpur Sadar', 38)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (56, N'Mujibnagar', 38)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (57, N'Kalia', 39)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (58, N'Lohagara', 39)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (59, N'Narail Sadar', 39)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (60, N'Naragati', 39)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (61, N'Assasuni', 40)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (62, N'Debhata', 40)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (63, N'Kalaroa', 40)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (64, N'Kaliganj', 40)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (65, N'Satkhira Sadar', 40)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (66, N'Shyamnagar', 40)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (67, N'Tala', 40)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (68, N'Ajmiriganj', 61)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (69, N'Bahubal', 61)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (70, N'Baniyachong', 61)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (71, N'Chunarughat', 61)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (72, N'Habiganj Sadar', 61)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (73, N'Lakhai', 61)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (74, N'Madhabpur', 61)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (75, N'Nabiganj', 61)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (76, N'Barlekha', 62)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (77, N'Kamalganj', 62)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (78, N'Kulaura', 62)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (79, N'Moulvibazar Sadar', 62)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (80, N'Rajnagar', 62)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (81, N'Sreemangal', 62)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (82, N'Juri', 62)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (83, N'Bishwamvarpur', 63)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (84, N'Chhatak', 63)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (85, N'Derai', 63)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (86, N'Dharampasha', 63)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (87, N'Dowarabazar', 63)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (88, N'Jagannathpur', 63)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (89, N'Jamalganj', 63)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (90, N'Sullah', 63)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (91, N'Sunamganj Sadar', 63)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (92, N'Tahirpur', 63)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (93, N'South Sunamganj', 63)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (94, N'Balaganj', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (95, N'Beanibazar', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (96, N'Bishwanath', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (97, N'Companigonj', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (98, N'Fenchuganj', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (99, N'Golapganj', 64)
GO
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (100, N'Gowainghat', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (101, N'Jaintiapur', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (102, N'Kanaighat', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (103, N'Sylhet Sadar', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (104, N'Zakiganj', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (105, N'South Shurma', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (106, N'Osmani Nagar', 64)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (107, N'Dhamrai', 18)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (108, N'Dohar', 18)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (109, N'Keraniganj', 18)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (110, N'Nawabganj', 18)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (111, N'Savar', 18)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (112, N'Gazipur Sadar', 20)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (113, N'Kaliakair', 20)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (114, N'Kaliganj', 20)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (115, N'Kapasia', 20)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (116, N'Sreepur', 20)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (117, N'Gopalganj Sadar', 21)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (118, N'Kashiani', 21)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (119, N'Kotalipara', 21)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (120, N'Muksudpur', 21)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (121, N'Tungipara', 21)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (122, N'Astagram', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (123, N'Bajitpur', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (124, N'Bhairab', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (125, N'Hossainpur', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (126, N'Itna', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (127, N'Karimganj', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (128, N'Katiadi', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (129, N'Kishoreganj Sadar', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (130, N'Kuliarchar', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (131, N'Mithamain', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (132, N'Nikli', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (133, N'Pakundia', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (134, N'Tarail', 22)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (135, N'Rajoir', 23)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (136, N'Madaripur Sadar', 23)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (137, N'Kalkini', 23)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (138, N'Shibchar', 23)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (139, N'Daulatpur', 24)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (140, N'Ghior', 24)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (141, N'Harirampur', 24)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (142, N'Manikgonj Sadar', 24)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (143, N'Saturia', 24)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (144, N'Shivalaya', 24)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (145, N'Singair', 24)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (146, N'Gazaria', 25)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (147, N'Lohajang', 25)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (148, N'Munshiganj Sadar', 21)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (149, N'Sirajdikhan', 25)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (150, N'Sreenagar', 25)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (151, N'Tongibari', 25)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (152, N'Araihazar', 26)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (153, N'Bandar', 26)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (154, N'Narayanganj Sadar', 26)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (155, N'Rupganj', 26)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (156, N'Sonargaon', 26)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (157, N'Baliakandi', 28)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (158, N'Goalandaghat', 28)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (159, N'Pangsha', 28)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (160, N'Rajbari Sadar', 28)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (161, N'Kalukhali', 28)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (162, N'Bhedarganj', 29)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (163, N'Damudya', 29)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (164, N'Gosairhat', 29)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (165, N'Naria', 29)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (166, N'Shariatpur Sadar', 29)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (167, N'Zajira', 29)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (168, N'Shakhipur', 29)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (169, N'Alfadanga', 19)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (170, N'Bhanga', 19)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (171, N'Boalmari', 19)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (172, N'Charbhadrasan', 19)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (173, N'Faridpur Sadar', 19)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (174, N'Madhukhali', 19)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (175, N'Nagarkanda', 19)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (176, N'Sadarpur', 19)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (177, N'Saltha', 19)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (178, N'Gopalpur', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (179, N'Basail', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (180, N'Bhuapur', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (181, N'Delduar', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (182, N'Ghatail', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (183, N'Kalihati', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (184, N'Madhupur', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (185, N'Mirzapur', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (186, N'Nagarpur', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (187, N'Sakhipur', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (188, N'Dhanbari', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (189, N'Tangail Sadar', 30)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (190, N'Narsingdi Sadar', 27)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (191, N'Belabo', 27)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (192, N'Monohardi', 27)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (193, N'Palash', 27)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (194, N'Raipura', 27)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (195, N'Shibpur', 27)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (196, N'Ali Kadam', 7)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (197, N'Bandarban Sadar', 7)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (198, N'Lama', 7)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (199, N'Naikhongchhari', 7)
GO
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (200, N'Rowangchhari', 7)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (201, N'Ruma', 7)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (202, N'Thanchi', 7)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (203, N'Akhaura', 8)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (204, N'Bancharampur', 8)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (205, N'Brahmanbaria Sadar', 8)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (206, N'Nabinagar', 8)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (207, N'Nasirnagar', 8)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (208, N'Sarail', 8)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (209, N'Ashuganj', 8)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (210, N'Bijoynagar', 8)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (211, N'Kasba', 8)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (212, N'Chandpur Sadar', 9)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (213, N'Faridganj', 9)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (214, N'Haimchar', 9)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (215, N'Haziganj', 9)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (216, N'Kachua', 9)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (217, N'Matlab Dakshin', 9)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (218, N'Matlab Uttar', 9)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (219, N'Shahrasti', 9)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (220, N'Anwara', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (221, N'Banshkhali', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (222, N'Boalkhali', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (223, N'Chandanaish', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (224, N'Fatikchhari', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (225, N'Hathazari', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (226, N'Lohagara', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (227, N'Mirsharai', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (228, N'Patiya', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (229, N'Rangunia', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (230, N'Raozan', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (231, N'Sandwip', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (232, N'Satkania', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (233, N'Sitakunda', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (234, N'Bandar', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (235, N'Chandgaon', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (236, N'Double Mooring', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (237, N'Kotwali', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (238, N'Pahartali', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (239, N'Panchlaish', 10)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (240, N'Barura', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (241, N'Brahmanpara', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (242, N'Burichang', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (243, N'Chandina', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (244, N'Chauddagram', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (245, N'Daudkandi', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (246, N'Debidwar', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (247, N'Homna', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (248, N'Laksam', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (249, N'Muradnagar', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (250, N'Nangalkot', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (251, N'Comilla Adarsha Sadar', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (252, N'Meghna', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (253, N'Titas', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (254, N'Monohargonj', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (255, N'Comilla Sadar Dakshin', 11)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (256, N'Chakaria', 12)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (257, N'Coxs Bazar Sadar', 12)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (258, N'Kutubdia', 12)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (259, N'Maheshkhali', 12)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (260, N'Ramu', 12)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (261, N'Teknaf', 12)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (262, N'Ukhia', 12)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (263, N'Pekua', 12)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (264, N'Chhagalnaiya', 13)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (265, N'Daganbhuiyan', 13)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (266, N'Feni Sadar', 13)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (267, N'Parshuram', 13)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (268, N'Sonagazi', 13)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (269, N'Fulgazi', 13)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (270, N'Dighinala', 14)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (271, N'Khagrachhari', 14)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (272, N'Lakshmichhari', 14)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (273, N'Mahalchhari', 14)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (274, N'Manikchhari', 14)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (275, N'Matiranga', 14)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (276, N'Panchhari', 14)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (277, N'Ramgarh', 14)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (278, N'Lakshmipur Sadar', 15)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (279, N'Raipur', 15)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (280, N'Ramganj', 15)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (281, N'Ramgati', 15)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (282, N'Kamalnagar', 15)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (283, N'Begumganj', 16)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (284, N'Noakhali Sadar', 16)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (285, N'Chatkhil', 16)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (286, N'Companiganj', 16)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (287, N'Hatiya', 16)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (288, N'Senbagh', 16)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (289, N'Sonaimuri', 16)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (290, N'Subarnachar', 16)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (291, N'Kabirhat', 16)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (292, N'Bagaichhari', 17)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (293, N'Barkal', 17)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (294, N'Kawkhali (Betbunia)', 17)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (295, N'Belaichhari', 17)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (296, N'Kaptai', 17)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (297, N'Juraichhari', 17)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (298, N'Langadu', 17)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (299, N'Naniyachar', 17)
GO
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (300, N'Rajasthali', 17)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (301, N'Rangamati Sadar', 17)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (302, N'Amtali', 1)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (303, N'Bamna', 1)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (304, N'Barguna Sadar', 1)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (305, N'Betagi', 1)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (306, N'Patharghata', 1)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (307, N'Taltoli', 1)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (308, N'Agailjhara', 2)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (309, N'Babuganj', 2)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (310, N'Bakerganj', 2)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (311, N'Banaripara', 2)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (312, N'Gaurnadi', 2)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (313, N'Hizla', 2)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (314, N'Barisal Sadar', 2)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (315, N'Mehendiganj', 2)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (316, N'Muladi', 2)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (317, N'Wazirpur', 2)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (318, N'Bhola Sadar', 3)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (319, N'Burhanuddin', 3)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (320, N'Char Fasson', 3)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (321, N'Daulatkhan', 3)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (322, N'Lalmohan', 3)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (323, N'Manpura', 3)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (324, N'Tazumuddin', 3)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (325, N'Jhalokati Sadar', 4)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (326, N'Kathalia', 4)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (327, N'Nalchity', 4)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (328, N'Rajapur', 4)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (329, N'Bauphal', 5)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (330, N'Dashmina', 5)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (331, N'Galachipa', 5)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (332, N'Kalapara', 5)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (333, N'Mirzaganj', 5)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (334, N'Patuakhali Sadar', 5)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (335, N'Rangabali', 5)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (336, N'Dumki', 5)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (337, N'Bhandaria', 6)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (338, N'Kawkhali', 6)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (339, N'Mathbaria', 6)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (340, N'Nazirpur', 6)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (341, N'Pirojpur Sadar', 6)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (342, N'Nesarabad (Swarupkati)', 6)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (343, N'Zianagor', 6)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (344, N'Atpara', 43)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (345, N'Barhatta', 43)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (346, N'Durgapur', 43)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (347, N'Khaliajuri', 43)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (348, N'Kalmakanda', 43)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (349, N'Kendua', 43)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (350, N'Madan', 43)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (351, N'Mohanganj', 43)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (352, N'Netrokona Sadar', 43)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (353, N'Purbadhala', 43)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (354, N'Jhenaigati', 44)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (355, N'Nakla', 44)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (356, N'Nalitabari', 44)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (357, N'Sherpur Sadar', 44)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (358, N'Sreebardi', 44)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (359, N'Baksiganj', 41)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (360, N'Dewanganj', 41)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (361, N'Islampur', 41)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (362, N'Jamalpur Sadar', 41)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (363, N'Madarganj', 41)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (364, N'Melandaha', 41)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (365, N'Sarishabari', 41)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (366, N'Bhaluka', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (367, N'Dhobaura', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (368, N'Fulbaria', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (369, N'Gaffargaon', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (370, N'Gauripur', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (371, N'Haluaghat', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (372, N'Ishwarganj', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (373, N'Mymensingh Sadar', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (374, N'Muktagachha', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (375, N'Nandail', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (376, N'Phulpur', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (377, N'Trishal', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (378, N'Tara Khanda', 42)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (379, N'Birampur', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (380, N'Birganj', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (381, N'Biral', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (382, N'Bochaganj', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (383, N'Chirirbandar', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (384, N'Phulbari', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (385, N'Ghoraghat', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (386, N'Hakimpur', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (387, N'Kaharole', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (388, N'Khansama', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (389, N'Dinajpur Sadar', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (390, N'Nawabganj', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (391, N'Parbatipur', 53)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (392, N'Phulchhari', 54)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (393, N'Gaibandha Sadar', 54)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (394, N'Gobindaganj', 54)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (395, N'Palashbari', 54)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (396, N'Sadullapur', 54)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (397, N'Sughatta', 54)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (398, N'Sundarganj', 54)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (399, N'Bhurungamari', 55)
GO
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (400, N'Char Rajibpur', 55)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (401, N'Chilmari', 55)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (402, N'Phulbari', 55)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (403, N'Kurigram Sadar', 55)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (404, N'Nageshwari', 55)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (405, N'Rajarhat', 55)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (406, N'Raomari', 55)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (407, N'Ulipur', 55)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (408, N'Aditmari', 56)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (409, N'Hatibandha', 56)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (410, N'Kaliganj', 56)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (411, N'Lalmonirhat Sadar', 56)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (412, N'Patgram', 56)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (413, N'Dimla', 57)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (414, N'Domar', 57)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (415, N'Jaldhaka', 57)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (416, N'Kishoreganj', 57)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (417, N'Nilphamari Sadar', 57)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (418, N'Saidpur', 57)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (419, N'Atwari', 58)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (420, N'Boda', 58)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (421, N'Debiganj', 58)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (422, N'Panchagarh Sadar', 58)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (423, N'Tetulia', 58)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (424, N'Badarganj', 59)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (425, N'Gangachhara', 59)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (426, N'Kaunia', 59)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (427, N'Rangpur Sadar', 59)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (428, N'Mithapukur', 59)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (429, N'Pirgachha', 59)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (430, N'Pirganj', 59)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (431, N'Taraganj', 59)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (432, N'Baliadangi', 60)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (433, N'Haripur', 60)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (434, N'Pirganj', 60)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (435, N'Ranisankail', 60)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (436, N'Thakurgaon Sadar', 60)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (437, N'Akkelpur', 46)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (438, N'Joypurhat Sadar', 46)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (439, N'Kalai', 46)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (440, N'Khetlal', 46)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (441, N'Panchbibi', 46)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (442, N'Adamdighi', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (443, N'Bogra Sadar', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (444, N'Dhunat', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (445, N'Dhupchanchia', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (446, N'Gabtali', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (447, N'Kahaloo', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (448, N'Nandigram', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (449, N'Sariakandi', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (450, N'Shajahanpur', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (451, N'Sherpur', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (452, N'Shibganj', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (453, N'Sonatola', 45)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (454, N'Atrai', 47)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (455, N'Badalgachhi', 47)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (456, N'Manda', 47)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (457, N'Dhamoirhat', 47)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (458, N'Mohadevpur', 47)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (459, N'Naogaon Sadar', 47)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (460, N'Niamatpur', 47)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (461, N'Patnitala', 47)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (462, N'Porsha', 47)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (463, N'Raninagar', 47)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (464, N'Sapahar', 47)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (465, N'Bagatipara', 48)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (466, N'Baraigram', 48)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (467, N'Gurudaspur', 48)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (468, N'Lalpur', 48)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (469, N'Natore Sadar', 48)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (470, N'Singra', 48)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (471, N'Naldanga', 48)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (472, N'Bholahat', 49)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (473, N'Gomastapur', 49)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (474, N'Nachole', 49)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (475, N'Nawabganj Sadar', 49)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (476, N'Shibganj', 49)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (477, N'Ataikula', 50)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (478, N'Atgharia', 50)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (479, N'Bera', 50)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (480, N'Bhangura', 50)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (481, N'Chatmohar', 50)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (482, N'Faridpur', 50)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (483, N'Ishwardi', 50)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (484, N'Pabna Sadar', 50)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (485, N'Santhia', 50)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (486, N'Sujanagar', 50)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (487, N'Belkuchi', 52)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (488, N'Chauhali', 52)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (489, N'Kamarkhanda', 52)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (490, N'Kazipur', 52)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (491, N'Raiganj', 52)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (492, N'Shahjadpur', 52)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (493, N'Sirajganj Sadar', 52)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (494, N'Tarash', 52)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (495, N'Ullahpara', 52)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (496, N'Bagha', 51)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (497, N'Bagmara', 51)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (498, N'Charghat', 51)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (499, N'Durgapur', 51)
GO
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (500, N'Godagari', 51)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (501, N'Mohanpur', 51)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (502, N'Paba', 51)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (503, N'Puthia', 51)
INSERT [dbo].[tbl_upazila] ([id], [upazila_name], [district_id]) VALUES (504, N'Tanore', 51)
SET IDENTITY_INSERT [dbo].[tbl_upazila] OFF
SET IDENTITY_INSERT [dbo].[tbl_user] ON 

INSERT [dbo].[tbl_user] ([id], [user_id], [user_pass], [user_email], [user_type], [retryAttemps], [isLocked], [lockedDateTime]) VALUES (1, N'Admin', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', N'admin@gmail.com', N'admin', 0, 0, NULL)
INSERT [dbo].[tbl_user] ([id], [user_id], [user_pass], [user_email], [user_type], [retryAttemps], [isLocked], [lockedDateTime]) VALUES (3, N'CSE120165', N'6462BD46BF10A75FA1A0C70265197180E5739CE1', N'polash@gmail.com', N'student', 0, 0, NULL)
INSERT [dbo].[tbl_user] ([id], [user_id], [user_pass], [user_email], [user_type], [retryAttemps], [isLocked], [lockedDateTime]) VALUES (4, N'tec12', N'7C4A8D09CA3762AF61E59520943DC26494F8941B', N'tec@gmail.com', N'teacher', 0, 0, NULL)
INSERT [dbo].[tbl_user] ([id], [user_id], [user_pass], [user_email], [user_type], [retryAttemps], [isLocked], [lockedDateTime]) VALUES (5, N'tec123', N'E0C95748A455C27A80FD289269120D4944D1F318', N'test@gmail.com', N'teacher', 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_subject]    Script Date: 10-Apr-16 1:33:25 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_subject] ON [dbo].[tbl_subject]
(
	[sub_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_user]    Script Date: 10-Apr-16 1:33:25 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_user] ON [dbo].[tbl_user]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_user_1]    Script Date: 10-Apr-16 1:33:25 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_user_1] ON [dbo].[tbl_user]
(
	[user_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_student]  WITH CHECK ADD  CONSTRAINT [FK_tbl_student_tbl_blood1] FOREIGN KEY([blood_group_id])
REFERENCES [dbo].[tbl_blood] ([id])
GO
ALTER TABLE [dbo].[tbl_student] CHECK CONSTRAINT [FK_tbl_student_tbl_blood1]
GO
ALTER TABLE [dbo].[tbl_student]  WITH CHECK ADD  CONSTRAINT [FK_tbl_student_tbl_class1] FOREIGN KEY([stu_class_id])
REFERENCES [dbo].[tbl_class] ([id])
GO
ALTER TABLE [dbo].[tbl_student] CHECK CONSTRAINT [FK_tbl_student_tbl_class1]
GO
ALTER TABLE [dbo].[tbl_student]  WITH CHECK ADD  CONSTRAINT [FK_tbl_student_tbl_district1] FOREIGN KEY([district_id])
REFERENCES [dbo].[tbl_district] ([id])
GO
ALTER TABLE [dbo].[tbl_student] CHECK CONSTRAINT [FK_tbl_student_tbl_district1]
GO
ALTER TABLE [dbo].[tbl_student]  WITH CHECK ADD  CONSTRAINT [FK_tbl_student_tbl_religion] FOREIGN KEY([religion_id])
REFERENCES [dbo].[tbl_religion] ([id])
GO
ALTER TABLE [dbo].[tbl_student] CHECK CONSTRAINT [FK_tbl_student_tbl_religion]
GO
ALTER TABLE [dbo].[tbl_student]  WITH CHECK ADD  CONSTRAINT [FK_tbl_student_tbl_upazila1] FOREIGN KEY([upazila_id])
REFERENCES [dbo].[tbl_upazila] ([id])
GO
ALTER TABLE [dbo].[tbl_student] CHECK CONSTRAINT [FK_tbl_student_tbl_upazila1]
GO
ALTER TABLE [dbo].[tbl_student]  WITH CHECK ADD  CONSTRAINT [FK_tbl_student_tbl_user1] FOREIGN KEY([user_id])
REFERENCES [dbo].[tbl_user] ([id])
GO
ALTER TABLE [dbo].[tbl_student] CHECK CONSTRAINT [FK_tbl_student_tbl_user1]
GO
ALTER TABLE [dbo].[tbl_upazila]  WITH CHECK ADD  CONSTRAINT [FK_tbl_upazila_tbl_district] FOREIGN KEY([district_id])
REFERENCES [dbo].[tbl_district] ([id])
GO
ALTER TABLE [dbo].[tbl_upazila] CHECK CONSTRAINT [FK_tbl_upazila_tbl_district]
GO
USE [master]
GO
ALTER DATABASE [SchoolManagementDB] SET  READ_WRITE 
GO
