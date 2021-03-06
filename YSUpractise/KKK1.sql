﻿
create database kkk1
USE [kkk1]
GO
/****** Object:  UserDefinedFunction [dbo].[AAA]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[AAA] (@a int, @b int)
		returns int as
		 begin declare  @ans int
			set @ans = @a + @b 
			return @ans
		 end
GO
/****** Object:  UserDefinedFunction [dbo].[bbbbber]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[bbbbber] (@name varchar(20))
returns @newship table (name varchar (20) )
 as

begin
	declare @count int
	set @count = ( select count (ship) as shipname
				   from Outcomes )
	insert into @newship(name)
	select ship
	from Outcomes
	group by ship 
	having @count >= (select count(ship) 
					  from Outcomes
					  where ship = @name) 
	return
end
GO
/****** Object:  UserDefinedFunction [dbo].[bbbbbern]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[bbbbbern] (@name varchar(20))
returns @newship table (name varchar (20) )
 as

begin
	declare @count int
	set @count = ( select count (ship) as shipname
				   from Outcomes
				   where ship != @name)
	insert into @newship(name)
	select ship
	from Outcomes
	group by ship 
	having @count >= (select count(ship) 
					  from Outcomes
					  where ship = @name) 
	return
end
GO
/****** Object:  UserDefinedFunction [dbo].[func]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[func](@name varchar(50))
returns @tab table (name varchar(50))
as
begin
	declare @cnt int
	set @cnt = (Select Count(battle) as counts
				From Outcomes	
				Where Outcomes.ship = @name)
	insert into @tab (name)
	Select ship
	From outcomes
	group by ship
	having count(battle) >= @cnt
return
end
GO
/****** Object:  UserDefinedFunction [dbo].[func0]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[func0](@ship varchar(50))
returns  @newtable table (shipname varchar(50))
 as
  begin
  declare @qanak int
  set @qanak= (select count(battle) as c1
  from outcomes
  where ship= @ship)
  insert into @newtable (shipname)
  Select ship 
  from outcomes
  group by ship
  having count (battle)>= @qanak
  return
end

GO
/****** Object:  UserDefinedFunction [dbo].[func1]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[func1](@arg1 int, @arg2 int)
returns int
as 
begin
	declare @ans int
	set @ans = @arg1 + @arg2
	return @ans
end
GO
/****** Object:  UserDefinedFunction [dbo].[func66]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[func66](@ship varchar(50))
returns @newtable table (shipname varchar(50))
as
begin
declare @qanak int
set @qanak=(select count(battle) as c1 
from Outcomes
where ship=@ship)
insert into @newtable(shipname)
select ship from Outcomes 
group by ship having count(battle)>=@qanak
return
end 
GO
/****** Object:  UserDefinedFunction [dbo].[name]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[name] (@arg1 int, @arg2 int)
returns int --veradardzvox tip
begin--f-i marmin
	declare @ans int
	set @ans = @arg1 + @arg2
	return @ans
end
GO
/****** Object:  UserDefinedFunction [dbo].[naver]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[naver] ( @name varchar(20) )
 returns 
 @newship table ( name varchar(20))
 as
 begin 
	declare @qanak int
	set @qanak = (select count(ship) as shipname from  Outcoms) 
	insert into @newship(name) select ship from Outcoms 
	group by ship
	having @qanak >= (select count(ship) from Outcoms
						 where ship = @name)
		return 
end
GO
/****** Object:  UserDefinedFunction [dbo].[naver1]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[naver1] (@name varchar(20))
	returns
	@newShip table (name varchar(20))
	as
	begin
		declare @qanak int
		set @qanak = (select count(*) as shipname
		from Outcomes)
		insert into @newShip(name) select ship from Outcomes
		group by ship
		having @qanak >= (select count(*) from Outcomes
			where ship = @name)
		return 
	end
GO
/****** Object:  UserDefinedFunction [dbo].[naverr]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[naverr] ( @name varchar(20) )
 returns 
 @newship table ( name varchar(20))
 as
 begin 
	declare @qanak int
	set @qanak = (select count(ship) as shipname from  Outcomes where @name != ship) 
	insert into @newship(name) select ship from Outcomes 
	group by ship
	having @qanak >= (select count(ship) from Outcomes
						 where ship = @name)
		return 
end

GO
/****** Object:  UserDefinedFunction [dbo].[naverrr]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[naverrr] ( @name varchar(20) )
 returns 
 @newship table ( name varchar(20))
 as
 begin 
	declare @qanak int
	set @qanak = (select count(ship) as shipname from  Outcomes) 
	insert into @newship(name) select ship from Outcomes 
	group by ship
	having @qanak >= (select count(ship) from Outcomes
						 where ship = @name)
		return 
end
GO
/****** Object:  UserDefinedFunction [dbo].[naverrrr]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[naverrrr] ( @name varchar(20) )
 returns 
 @newship table ( name varchar(20))
 as
 begin 
	declare @qanak int
	set @qanak = (select count(ship) as shipname from  Outcomes where @name != ship) 
	insert into @newship(name) select ship from Outcomes 
	group by ship
	having @qanak > (select count(ship) from Outcomes
						 where ship = @name)
		return 
end

GO
/****** Object:  UserDefinedFunction [dbo].[sum]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[sum](@arg1 int, @arg2 int)
returns int
as
begin
declare @answer int
set @answer = @arg1 + @arg2
return @answer
end
GO
/****** Object:  UserDefinedFunction [dbo].[summary]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[summary](@arg1 int, @arg2 int)
returns int
as
begin
declare @answer int
set @answer = @arg1 + @arg2
return @answer
end
GO
/****** Object:  Table [dbo].[Battles]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Battles](
	[name] [varchar](20) NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_Battles] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Classes](
	[class] [varchar](50) NOT NULL,
	[type] [varchar](2) NOT NULL,
	[country] [varchar](20) NOT NULL,
	[numGuns] [tinyint] NULL,
	[bore] [real] NULL,
	[displacement] [int] NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[class] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Outcomes]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Outcomes](
	[ship] [varchar](50) NOT NULL,
	[battle] [varchar](20) NOT NULL,
	[result] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Outcomes] PRIMARY KEY CLUSTERED 
(
	[ship] ASC,
	[battle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ships]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ships](
	[name] [varchar](50) NOT NULL,
	[class] [varchar](50) NOT NULL,
	[launched] [smallint] NULL,
 CONSTRAINT [PK_Ships] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkV]    Script Date: 20.12.2017 16:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkV](
	[Id] [int] NOT NULL,
	[PDateTime] [datetime] NULL,
	[owner] [char](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'Guadalcanal', CAST(N'1942-11-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'North Atlantic', CAST(N'1941-05-25 00:00:00.000' AS DateTime))
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'North Cape', CAST(N'1943-12-26 00:00:00.000' AS DateTime))
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'Surigao Strait', CAST(N'1944-10-25 00:00:00.000' AS DateTime))
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Bismarck', N'bb', N'Germany', 8, 15, 42000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Iowa', N'bb', N'USA', 9, 16, 46000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Kongo', N'bc', N'Japan', 8, 14, 32000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'North Carolina', N'bb', N'USA', 12, 16, 37000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'October Revolution', N'bb', N'USSR', 12, 13, 25000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Renown', N'bc', N'Gt.Britain', 6, 15, 32000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Revenge', N'bb', N'Gt.Britain', 8, 15, 29000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Tennessee', N'bb', N'USA', 12, 14, 32000)
INSERT [dbo].[Classes] ([class], [type], [country], [numGuns], [bore], [displacement]) VALUES (N'Yamato', N'bb', N'Japan', 9, 18, 65000)
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Bismarck', N'North Atlantic', N'sunk')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'California', N'Guadalcanal', N'damaged')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'California', N'Surigao Strait', N'ok')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Duke of York', N'North Cape', N'ok')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Fuso', N'Surigao Strait', N'sunk')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Hood', N'North Atlantic', N'sunk')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'King George V', N'North Atlantic', N'ok')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Kirishima', N'Guadalcanal', N'sunk')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Prince of Wales', N'North Atlantic', N'damaged')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Rodney', N'North Atlantic', N'OK')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Schamhorst', N'North Cape', N'sunk')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'South Dakota', N'Guadalcanal', N'damaged')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Tennessee', N'Surigao Strait', N'ok')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Washington', N'Guadalcanal', N'ok')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'West Virginia', N'Surigao Strait', N'ok')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Yamashiro', N'Surigao Strait', N'sunk')
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'California', N'Tennessee', 1921)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Haruna', N'Kongo', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Hiei', N'Kongo', 1914)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Iowa', N'Iowa', 1943)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Kirishima', N'Kongo', 1915)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Kongo', N'Kongo', 1913)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Marat', N'October Revolution', 1914)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Missouri', N'Iowa', 1944)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Musashi', N'Yamato', 1942)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'New Jersey', N'Iowa', 1943)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'North Carolina', N'North Carolina', 1941)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'October Revolution', N'October Revolution', 1914)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Paris Comuna', N'October Revolution', 1914)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Ramillies', N'Revenge', 1917)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Renown', N'Renown', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Repulse', N'Renown', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Resolution', N'Renown', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Revenge', N'Revenge', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Royal Oak', N'Revenge', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Royal Sovereign', N'Revenge', 1916)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Tennessee', N'Tennessee', 1920)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Washington', N'North Carolina', 1941)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Wisconsin', N'Iowa', 1944)
INSERT [dbo].[Ships] ([name], [class], [launched]) VALUES (N'Yamato', N'Yamato', 1941)
INSERT [dbo].[WorkV] ([Id], [PDateTime], [owner]) VALUES (15, CAST(N'2011-10-10 00:00:00.000' AS DateTime), N'Hakobyan V                                        ')
INSERT [dbo].[WorkV] ([Id], [PDateTime], [owner]) VALUES (125, CAST(N'2011-10-10 00:00:00.000' AS DateTime), N'Hakobyan V.                                       ')
INSERT [dbo].[WorkV] ([Id], [PDateTime], [owner]) VALUES (1265, CAST(N'2011-10-10 00:00:00.000' AS DateTime), N'Hakobyan Van                                      ')
INSERT [dbo].[WorkV] ([Id], [PDateTime], [owner]) VALUES (1526, CAST(N'2011-10-10 00:00:00.000' AS DateTime), N'Hakobyan                                          ')
INSERT [dbo].[WorkV] ([Id], [PDateTime], [owner]) VALUES (15265, CAST(N'2011-10-10 00:00:00.000' AS DateTime), N'Hakobyan Vanik                                    ')
SET ANSI_PADDING ON

GO
/****** Object:  Index [Constr]    Script Date: 20.12.2017 16:04:03 ******/
ALTER TABLE [dbo].[WorkV] ADD  CONSTRAINT [Constr] UNIQUE NONCLUSTERED 
(
	[owner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Outcomes]  WITH CHECK ADD  CONSTRAINT [FK_Outcomes_Battles] FOREIGN KEY([battle])
REFERENCES [dbo].[Battles] ([name])
GO
ALTER TABLE [dbo].[Outcomes] CHECK CONSTRAINT [FK_Outcomes_Battles]
GO
ALTER TABLE [dbo].[Ships]  WITH NOCHECK ADD  CONSTRAINT [FK_Ships_Classes] FOREIGN KEY([class])
REFERENCES [dbo].[Classes] ([class])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Ships] CHECK CONSTRAINT [FK_Ships_Classes]
GO
