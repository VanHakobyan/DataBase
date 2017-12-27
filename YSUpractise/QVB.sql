CREATE DATABASE QVB

USE [QVB]
GO
/****** Object:  Table [dbo].[utB]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utB](
	[B_DATETIME] [datetime] NOT NULL,
	[B_Q_ID] [int] NOT NULL,
	[B_V_ID] [int] NOT NULL,
	[B_VOL] [tinyint] NULL,
 CONSTRAINT [PK_utB] PRIMARY KEY CLUSTERED 
(
	[B_DATETIME] ASC,
	[B_Q_ID] ASC,
	[B_V_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[utQ]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utQ](
	[Q_ID] [int] NOT NULL,
	[Q_NAME] [nvarchar](35) NULL,
 CONSTRAINT [PK_utQ] PRIMARY KEY CLUSTERED 
(
	[Q_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[utV]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utV](
	[V_ID] [int] NOT NULL,
	[V_NAME] [nvarchar](35) NULL,
	[V_COLOR] [nchar](1) NULL,
 CONSTRAINT [PK_utV] PRIMARY KEY CLUSTERED 
(
	[V_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2000-01-01 01:13:36.000' AS DateTime), 22, 50, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2001-01-01 01:13:37.000' AS DateTime), 22, 50, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2002-01-01 01:13:38.000' AS DateTime), 22, 51, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2002-06-01 01:13:39.000' AS DateTime), 22, 51, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:01.000' AS DateTime), 1, 1, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:03.000' AS DateTime), 2, 2, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:04.000' AS DateTime), 3, 3, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:05.000' AS DateTime), 1, 4, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:06.000' AS DateTime), 2, 5, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:07.000' AS DateTime), 3, 6, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:08.000' AS DateTime), 1, 7, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:09.000' AS DateTime), 2, 8, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:10.000' AS DateTime), 3, 9, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:11.000' AS DateTime), 4, 10, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:12.000' AS DateTime), 5, 11, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:13.000' AS DateTime), 5, 12, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:14.000' AS DateTime), 5, 13, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:15.000' AS DateTime), 5, 14, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:16.000' AS DateTime), 5, 15, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:17.000' AS DateTime), 5, 16, 205)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:18.000' AS DateTime), 6, 10, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:19.000' AS DateTime), 6, 17, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:20.000' AS DateTime), 6, 18, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:21.000' AS DateTime), 6, 19, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:22.000' AS DateTime), 7, 17, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:23.000' AS DateTime), 7, 20, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:24.000' AS DateTime), 7, 21, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:25.000' AS DateTime), 7, 22, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:26.000' AS DateTime), 8, 10, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:27.000' AS DateTime), 9, 23, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:28.000' AS DateTime), 9, 24, 255)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:29.000' AS DateTime), 9, 25, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:30.000' AS DateTime), 9, 26, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:31.000' AS DateTime), 10, 25, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:31.000' AS DateTime), 10, 26, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:33.000' AS DateTime), 10, 27, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:34.000' AS DateTime), 10, 28, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:35.000' AS DateTime), 10, 29, 245)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:36.000' AS DateTime), 10, 30, 245)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:37.000' AS DateTime), 11, 31, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:38.000' AS DateTime), 11, 32, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:39.000' AS DateTime), 11, 33, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:40.000' AS DateTime), 11, 34, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:41.000' AS DateTime), 11, 35, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:42.000' AS DateTime), 11, 36, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:43.000' AS DateTime), 12, 31, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:44.000' AS DateTime), 12, 32, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:45.000' AS DateTime), 12, 33, 155)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:46.000' AS DateTime), 12, 34, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:47.000' AS DateTime), 12, 35, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:12:48.000' AS DateTime), 12, 36, 100)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:01.000' AS DateTime), 4, 37, 20)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:02.000' AS DateTime), 8, 38, 20)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:03.000' AS DateTime), 13, 39, 123)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:04.000' AS DateTime), 14, 39, 111)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:05.000' AS DateTime), 4, 37, 185)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:05.000' AS DateTime), 14, 40, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:06.000' AS DateTime), 15, 41, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:07.000' AS DateTime), 15, 41, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:08.000' AS DateTime), 15, 42, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:09.000' AS DateTime), 15, 42, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:10.000' AS DateTime), 16, 42, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:11.000' AS DateTime), 16, 42, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:12.000' AS DateTime), 16, 43, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:13.000' AS DateTime), 16, 43, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:14.000' AS DateTime), 16, 47, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:15.000' AS DateTime), 17, 44, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:16.000' AS DateTime), 17, 44, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:17.000' AS DateTime), 17, 45, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:18.000' AS DateTime), 17, 45, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:24.000' AS DateTime), 19, 44, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:25.000' AS DateTime), 19, 45, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-01-01 01:13:26.000' AS DateTime), 19, 45, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-02-01 01:13:19.000' AS DateTime), 18, 45, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-02-01 01:13:27.000' AS DateTime), 20, 45, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-02-01 01:13:31.000' AS DateTime), 21, 49, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-02-02 01:13:32.000' AS DateTime), 21, 49, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-02-03 01:13:33.000' AS DateTime), 21, 50, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-02-04 01:13:34.000' AS DateTime), 21, 50, 50)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-02-05 01:13:35.000' AS DateTime), 21, 48, 1)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-03-01 01:13:20.000' AS DateTime), 18, 45, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-03-01 01:13:28.000' AS DateTime), 20, 45, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-04-01 01:13:21.000' AS DateTime), 18, 46, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-04-01 01:13:29.000' AS DateTime), 20, 46, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-05-01 01:13:22.000' AS DateTime), 18, 46, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-05-01 01:13:30.000' AS DateTime), 20, 46, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-06-11 01:13:23.000' AS DateTime), 19, 44, 10)
INSERT [dbo].[utB] ([B_DATETIME], [B_Q_ID], [B_V_ID], [B_VOL]) VALUES (CAST(N'2003-06-23 01:12:02.000' AS DateTime), 1, 1, 100)
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (1, N'Square # 01')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (2, N'Square # 02')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (3, N'Square # 03')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (4, N'Square # 04')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (5, N'Square # 05')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (6, N'Square # 06')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (7, N'Square # 07')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (8, N'Square # 08')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (9, N'Square # 09')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (10, N'Square # 10')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (11, N'Square # 11')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (12, N'Square # 12')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (13, N'Square # 13')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (14, N'Square # 14')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (15, N'Square # 15')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (16, N'Square # 16')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (17, N'Square # 17')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (18, N'Square # 18')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (19, N'Square # 19')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (20, N'Square # 20')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (21, N'Square # 21')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (22, N'Square # 22')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (23, N'Square # 23')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (24, N'Square # 24')
INSERT [dbo].[utQ] ([Q_ID], [Q_NAME]) VALUES (25, N'Square # 25')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (1, N'Ballon # 01 ', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (2, N'Ballon # 02 ', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (3, N'Ballon # 03 ', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (4, N'Ballon # 04 ', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (5, N'Ballon # 05 ', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (6, N'Ballon # 06 ', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (7, N'Ballon # 07 ', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (8, N'Ballon # 08 ', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (9, N'Ballon # 09 ', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (10, N'Ballon # 10', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (11, N'Ballon # 11', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (12, N'Ballon # 12', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (13, N'Ballon # 13', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (14, N'Ballon # 14', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (15, N'Ballon # 15', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (16, N'Ballon # 16', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (17, N'Ballon # 17', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (18, N'Ballon # 18', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (19, N'Ballon # 19', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (20, N'Ballon # 20', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (21, N'Ballon # 21', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (22, N'Ballon # 22', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (23, N'Ballon # 23', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (24, N'Ballon # 24', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (25, N'Ballon # 25', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (26, N'Ballon # 26', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (27, N'Ballon # 27', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (28, N'Ballon # 28', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (29, N'Ballon # 29', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (30, N'Ballon # 30', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (31, N'Ballon # 31', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (32, N'Ballon # 32', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (33, N'Ballon # 33', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (34, N'Ballon # 34', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (35, N'Ballon # 35', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (36, N'Ballon # 36', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (37, N'Ballon # 37', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (38, N'Ballon # 38', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (39, N'Ballon # 39', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (40, N'Ballon # 40', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (41, N'Ballon # 41', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (42, N'Ballon # 42', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (43, N'Ballon # 43', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (44, N'Ballon # 44', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (45, N'Ballon # 45', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (46, N'Ballon # 46', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (47, N'Ballon # 47', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (48, N'Ballon # 48', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (49, N'Ballon # 49', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (50, N'Ballon # 50', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (51, N'Ballon # 51', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (52, N'Ballon # 52', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (53, N'Ballon # 53', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (54, N'Ballon # 54', N'B')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (55, N'srva', N'G')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (56, N'srva', N'h')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (57, N'srva', N'h')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (58, N'AGA', N'h')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (59, N'abc', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (60, N'abc', N'R')
INSERT [dbo].[utV] ([V_ID], [V_NAME], [V_COLOR]) VALUES (61, N'sona', N'B')
ALTER TABLE [dbo].[utB]  WITH CHECK ADD  CONSTRAINT [FK_utB_utQ] FOREIGN KEY([B_Q_ID])
REFERENCES [dbo].[utQ] ([Q_ID])
GO
ALTER TABLE [dbo].[utB] CHECK CONSTRAINT [FK_utB_utQ]
GO
ALTER TABLE [dbo].[utB]  WITH CHECK ADD  CONSTRAINT [FK_utB_utV] FOREIGN KEY([B_V_ID])
REFERENCES [dbo].[utV] ([V_ID])
GO
ALTER TABLE [dbo].[utB] CHECK CONSTRAINT [FK_utB_utV]
GO
/****** Object:  StoredProcedure [dbo].[AvelacnelTox]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[AvelacnelTox] (@name varchar(20), @color char(1))
as
begin
	declare @Id int
	set @Id = ( select MAX(V_ID) as MaxId
				from utV ) + 1
	insert into utV (V_ID, V_NAME, V_COLOR)
	values          (@Id,  @name,  @color)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertThat]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[InsertThat] 
(@name varchar(20), @color char(1))
as
begin
declare @Id INT;
set @Id = (select max(v_id) i from utV) + 1

insert into utv (V_ID, V_NAME,V_COLOR)
values (@Id, @name, @color) 
end

--execute InsertThat srva, 'h'
GO
/****** Object:  StoredProcedure [dbo].[IntherThat]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[IntherThat]
(@name varchar(20), @color char(6)) as
begin
declare @Id int
set @Id = (select MAX(V_ID) from utV) + 1
insert into utV (V_ID, V_NAME, V_COLOR)
values (@Id, @name, @color)
end

GO
/****** Object:  StoredProcedure [dbo].[InthertThat]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[InthertThat] 
(@name varchar(20), @color char(1))
as
begin
declare @Id INT;
set @Id = (select max(v_id) i from utV) + 1

insert into utv (V_ID, V_NAME,V_COLOR)
values (@Id, @name, @color) 
end
GO
/****** Object:  StoredProcedure [dbo].[p1]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[p1] (@name varchar(20), @color char(1))
as 
begin
declare @id int
set @id= (select max(V_id)as id1
from utV ) +1 
end

GO
/****** Object:  StoredProcedure [dbo].[p12]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p12](@name varchar(20),@color char(1))
as 
begin
declare @id int
set @id=(select max(V_id) as id1
from utv)+1
insert into utv(V_id,V_COLOR,V_NAME)
Values(@id,@color,@name)
end
GO
/****** Object:  StoredProcedure [dbo].[p123]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[p123] (@name varchar(20), @color char(1))
as 
begin
declare @id int
set @id= (select max(V_id)as id1
from utV ) +1 
insert into UtV (V_ID, V_COLOR, V_NAME) 
Values (@id, @color, @name)
end

GO
/****** Object:  StoredProcedure [dbo].[plll]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[plll]
(@maker char(1), @count int out) as
begin
declare @start int, @end int
set @start = (select COUNT(*) from Product) + (select COUNT(*) from PC) + (select COUNT(*) from Laptop) + (select COUNT(*) from Printer)
delete from Laptop 
from Laptop join Product on Laptop.model = Product.model
delete from PC 
from PC join Product on PC.model = Product.model
delete from Printer 
from Printer join Product on Printer.model = Product.model
delete from Product where maker = @maker
set @end = (select COUNT(*) from Product) + (select COUNT(*) from PC) + (select COUNT(*) from Laptop) + (select COUNT(*) from Printer)
set @count = @start - @end
end

declare @x int
exec plll'D', @x out
print @x 
GO
/****** Object:  StoredProcedure [dbo].[poghos]    Script Date: 20.12.2017 15:09:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[poghos]
(@name varchar(20), @color char(6)) as
begin
declare @Id int
set @Id = (select MAX(V_ID) from utV) + 1
insert into utV (V_ID, V_NAME, V_COLOR)
values (@Id, @name, @color)
end

execute poghos "magenta", "ff3591"
GO
