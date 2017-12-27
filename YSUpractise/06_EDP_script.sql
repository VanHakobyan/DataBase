
/****** Object:  Database [EDP]    Script Date: 01/04/2011 16:37:40 ******/
CREATE DATABASE [EDP] ON  PRIMARY 
( NAME = N'Emp_Dept_Pro', FILENAME = N'D:\Emp_Dept_Pro.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Emp_Dept_Pro_log', FILENAME = N'D:\Emp_Dept_Pro_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [EDP] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EDP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [EDP] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [EDP] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [EDP] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [EDP] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [EDP] SET ARITHABORT OFF 
GO

ALTER DATABASE [EDP] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [EDP] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [EDP] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [EDP] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [EDP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [EDP] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [EDP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [EDP] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [EDP] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [EDP] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [EDP] SET  ENABLE_BROKER 
GO

ALTER DATABASE [EDP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [EDP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [EDP] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [EDP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [EDP] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [EDP] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [EDP] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [EDP] SET  READ_WRITE 
GO

ALTER DATABASE [EDP] SET RECOVERY FULL 
GO

ALTER DATABASE [EDP] SET  MULTI_USER 
GO

ALTER DATABASE [EDP] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [EDP] SET DB_CHAINING OFF 
GO


USE [EDP]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Workers_Departments]') AND parent_object_id = OBJECT_ID(N'[dbo].[Workers]'))
ALTER TABLE [dbo].[Workers] DROP CONSTRAINT [FK_Workers_Departments]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Workers_Projects]') AND parent_object_id = OBJECT_ID(N'[dbo].[Workers]'))
ALTER TABLE [dbo].[Workers] DROP CONSTRAINT [FK_Workers_Projects]
GO

/****** Object:  Table [dbo].[Departments]    Script Date: 01/04/2011 16:37:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departments]') AND type in (N'U'))
DROP TABLE [dbo].[Departments]
GO

/****** Object:  Table [dbo].[Departments]    Script Date: 01/04/2011 16:37:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Departments](
	[Dept_No] [int] NOT NULL,
	[Dept_Name] [varchar](20) NOT NULL,
	[Dept_Emp_No] [int] NOT NULL,
	[Dept_MNG] [int] NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Dept_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Projects]    Script Date: 01/04/2011 16:38:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Projects]') AND type in (N'U'))
DROP TABLE [dbo].[Projects]
GO

USE [EDP]
GO

/****** Object:  Table [dbo].[Projects]    Script Date: 01/04/2011 16:38:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Projects](
	[Pro_No] [int] NOT NULL,
	[Pro_Title] [varchar](30) NOT NULL,
	[Pro_SDate] [datetime] NOT NULL,
	[Pro_Durat] [datetime] NULL,
	[Pro_MNG] [int] NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[Pro_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



/****** Object:  Table [dbo].[Workers]    Script Date: 01/04/2011 16:37:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Workers]') AND type in (N'U'))
DROP TABLE [dbo].[Workers]
GO

USE [EDP]
GO

/****** Object:  Table [dbo].[Workers]    Script Date: 01/04/2011 16:37:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Workers](
	[Emp_No] [int] NOT NULL,
	[Emp_Name] [varchar](50) NOT NULL,
	[Emp_BDate] [datetime] NULL,
	[Emp_Sal] [money] NOT NULL,
	[Dept_No] [int] NOT NULL,
	[Pro_NO] [int] NOT NULL,
 CONSTRAINT [PK_Workers] PRIMARY KEY CLUSTERED 
(
	[Emp_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Workers]  WITH CHECK ADD  CONSTRAINT [FK_Workers_Departments] FOREIGN KEY([Dept_No])
REFERENCES [dbo].[Departments] ([Dept_No])
GO

ALTER TABLE [dbo].[Workers] CHECK CONSTRAINT [FK_Workers_Departments]
GO

ALTER TABLE [dbo].[Workers]  WITH CHECK ADD  CONSTRAINT [FK_Workers_Projects] FOREIGN KEY([Pro_NO])
REFERENCES [dbo].[Projects] ([Pro_No])
GO

ALTER TABLE [dbo].[Workers] CHECK CONSTRAINT [FK_Workers_Projects]
GO



                                                                                                                                                                                                                                                                 


----Department------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into [Departments] values(1,'Dept_1',6,1)
insert into [Departments] values(2,'Dept_2',6,2)
insert into [Departments] values(3,'Dept_3',5,3)
insert into [Departments] values(4,'Dept_4',10,5)
insert into [Departments] values(5,'Dept_5',0,null)

go
                                                                                                                                                                                                                                                                 
----Projects------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into [Projects] values(1,'Dept_1 , Project_1','10/15/2006','10/15/2007',4)
insert into [Projects] values(2,'Dept_1 , Project_2','03/03/2007','10/03/2007',1)
insert into [Projects] values(3,'First project of Dept_2','01/06/2006','08/06/2006',2)
insert into [Projects] values(4,'Second project of Dept_2','07/05/2006','02/05/2007',11)
insert into [Projects] values(5,'Project of Dept_3','07/01/2006','07/01/2007',3)
insert into [Projects] values(6,'Analize','07/05/2007','07/03/2008',5)
insert into [Projects] values(7,'Application','08/15/2007','04/15/2007',18)

go

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into [Workers] values(1,'Avagyan Armen','10/15/1975',140000,1,2)
insert into [Workers] values(2,'Barseghyan Aram','05/28/1973',160000,2,3)
insert into [Workers] values(3,'Avanesyan Karine','08/19/1976',150000,3,5)
insert into [Workers] values(4,'Davtyan Arman','10/12/1973',100000,1,1)
insert into [Workers] values(5,'Harutyunyan Lusine','06/18/1970',170000,4,6)
insert into [Workers] values(6,'Aramyan Narine',null,90000,1,1)
insert into [Workers] values(7,'Ghalechyan Haykuhi','01/15/1973',85000,1,1)
insert into [Workers] values(8,'Daghlaryan Gevorg','07/17/1972',90000,1,2)
insert into [Workers] values(9,'Poghosyan Luiza','06/16/1968',95000,1,2)
insert into [Workers] values(10,'Avagyan Armine','05/25/1979',105000,2,3)
insert into [Workers] values(11,'Poghosyan Tigtan','12/29/1948',120000,2,4)
insert into [Workers] values(12,'Martirosyan Karen','12/04/1975',105000,2,4)
insert into [Workers] values(13,'Avoyan Arthur','05/28/1970',80000,2,3)
insert into [Workers] values(14,'Madoyan Arthur','08/19/1971',800000,2,4)
insert into [Workers] values(15,'Tatincyan Armen',null,110000,3,5)
insert into [Workers] values(16,'Telunc Kara','02/13/1975',100000,3,5)
insert into [Workers] values(17,'Haroyan Anna','03/01/1975',100000,3,5)
insert into [Workers] values(18,'Harutyunyan Anush',null,120000,4,7)
insert into [Workers] values(19,'Manukyan Zaven','12/30/1975',90000,3,5)
insert into [Workers] values(20,'Martirosyan Harut','07/28/1975',115000,4,6)
insert into [Workers] values(21,'Barseghyan Armen','07/31/1975',110000,4,6)
insert into [Workers] values(22,'Avagyan Karmen','12/12/1975',90000,4,6)
insert into [Workers] values(23,'Baghdasaryan Saro','11/15/1975',70000,4,6)
insert into [Workers] values(24,'Manukyan Ara','05/09/1975',100000,4,7)
insert into [Workers] values(25,'Avagyan Artashes','09/21/1975',85000,4,7)
insert into [Workers] values(26,'Avagyan Arzuman','04/24/1975',80000,4,7)
insert into [Workers] values(26,'Harutyunjan Gayane','04/01/1970',60000,4,7)

go