USE [master]
GO
/****** Object:  Database [pproduct]    Script Date: 20.12.2017 15:13:24 ******/
CREATE DATABASE [pproduct]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pproduct', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\pproduct.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'pproduct_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\pproduct_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [pproduct] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pproduct].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pproduct] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pproduct] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pproduct] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pproduct] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pproduct] SET ARITHABORT OFF 
GO
ALTER DATABASE [pproduct] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [pproduct] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pproduct] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pproduct] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pproduct] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pproduct] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pproduct] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pproduct] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pproduct] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pproduct] SET  ENABLE_BROKER 
GO
ALTER DATABASE [pproduct] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pproduct] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pproduct] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pproduct] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pproduct] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pproduct] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pproduct] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pproduct] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [pproduct] SET  MULTI_USER 
GO
ALTER DATABASE [pproduct] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pproduct] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pproduct] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pproduct] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [pproduct] SET DELAYED_DURABILITY = DISABLED 
GO
USE [pproduct]
GO
/****** Object:  UserDefinedFunction [dbo].[Aaa]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Aaa] (@arg1 int,
					@arg2 int)
returns int

begin
declare @ans int
set @ans = @arg1 + @arg2
return @ans
end
GO
/****** Object:  UserDefinedFunction [dbo].[func6]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[func6](@maker char(1), @model varchar(4))
returns money
 as 
begin declare @price money
set @price = (select max(price) as p
from (select price, model
from pc
union select price, model
from laptop
union select price, model
from Printer ) as pr1
inner join product on pr1.model=product.model
where product.maker= @maker and product.model=@model)
return @price
end
GO
/****** Object:  UserDefinedFunction [dbo].[MiLrivUrishBan]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[MiLrivUrishBan](@ModelNumber varchar(4), @MakerName varchar(1))
  returns money
  as 
  begin
  declare @maxPrice money;
  set @maxPrice = (select max(price) from ((select price, Model from PC) 
  union (select price, Model from Laptop)
  union (select price, Model from Printer)
  )as MiBan
  join Product on Product.model = MiBan.model 
  where Product.maker = @MakerName and Product.model = @ModelNumber
  )
  return @maxPrice
  end
GO
/****** Object:  UserDefinedFunction [dbo].[MiUrishBan]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[MiUrishBan](@ModelNumber varchar(4), @MakerName varchar(1))
  returns money
  as 
  begin
  declare @maxPrice money;
  set @maxPrice = (select max(price) from ((select price, Model from PC) 
  union (select price, Model from Laptop)
  union (select price, Model from Printer)
  )as MiBan
  join Product on Product.model = MiBan.model 
  where Product.maker = @MakerName and Product.model = @ModelNumber
  )
  return @maxPrice
  end
GO
/****** Object:  UserDefinedFunction [dbo].[NewOne]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create function [dbo].[NewOne](@model varchar(4), @name varchar(1))
  returns money
  as 
  begin
  declare @maxPrice money
  set @maxPrice = (select max(price) from ((select price, model from PC) union (select price, model from Laptop) union (select price, model from PC)) as NewPrice
					join Product on Product.model = NewPrice.model
					where Product.maker = @name and Product.model = @model)
return @maxPrice
end
GO
/****** Object:  UserDefinedFunction [dbo].[Sum_]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Sum_](@start datetime, @end datetime, @point tinyint)
 returns int 
 as 
 begin
 declare @res int
 select @res = count(out) from outcome_o
 where date between @start and @end and @point = outcome_o.point
 return  @res
 end

GO
/****** Object:  UserDefinedFunction [dbo].[sum1]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[sum1](@arg1 int, @arg2 int)
returns int as 
begin declare @ans int 
set @ans = @arg1+@arg2
return @ans
end 
GO
/****** Object:  Table [dbo].[Laptop]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Laptop](
	[code] [int] NOT NULL,
	[model] [varchar](4) NOT NULL,
	[speed] [decimal](4, 0) NOT NULL,
	[ram] [decimal](4, 0) NOT NULL,
	[hd] [decimal](3, 0) NOT NULL,
	[price] [float] NOT NULL,
	[screen] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PC]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PC](
	[code] [int] NOT NULL,
	[model] [varchar](4) NOT NULL,
	[speed] [decimal](4, 0) NOT NULL,
	[ram] [decimal](4, 0) NOT NULL,
	[hd] [decimal](3, 0) NOT NULL,
	[cd] [varchar](3) NOT NULL,
	[price] [float] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Printer]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Printer](
	[code] [int] NOT NULL,
	[model] [varchar](4) NOT NULL,
	[color] [char](1) NOT NULL,
	[type] [varchar](6) NOT NULL,
	[price] [float] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[maker] [char](1) NOT NULL,
	[model] [varchar](4) NOT NULL,
	[type] [varchar](7) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[func]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[func](@maker char(1))
returns Table
as 
return 
select count(model) as [count], [type]  
from product
where maker = @maker
group by [type]
GO
/****** Object:  UserDefinedFunction [dbo].[func2]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[func2](@maker char(1), @model varchar(4))
returns Table
as
return  
select max(prices.price) as prices, [type]
from (
	select 'pc' as [type], price
	 from product
	 inner join pc
	 on product.model = pc.model 
	 where maker = @maker
	 and product.model = @model 
	 union
	 select 'laptop' as [type], price
	 from product
	 inner join laptop
	 on product.model = laptop.model 
	 where maker = @maker
	 and product.model = @model
	 union
	 select 'printer' as [type], price
	 from product
	 inner join printer
	 on product.model = printer.model 
	 where maker = @maker
	 and product.model = @model
) as prices
group by [type]
GO
/****** Object:  UserDefinedFunction [dbo].[func4]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[func4](@maker char(1))
returns table
 as 
 return (select type, count (*) as qanak
 from product
 group by type)
GO
/****** Object:  UserDefinedFunction [dbo].[func55]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[func55](@maker char(1))
returns table
as 
return (select type, count(*) as qanak from Product
group by type)
GO
/****** Object:  UserDefinedFunction [dbo].[M2]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create function [dbo].[M2](@MakerName varchar(1))
  returns table
  as 
  return
  select [type],count(*) as qanak from Product
  group by [type] 
GO
/****** Object:  UserDefinedFunction [dbo].[nn]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[nn] (@maker char(1)) 
returns table 
as 
return (select count(model) as [count] from Product 
where maker = @maker
 group by type )
GO
/****** Object:  UserDefinedFunction [dbo].[nn1]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[nn1] (@maker char(1)) 
returns table 
as 
return (select type, count(model) as [count] from Product 
where maker = @maker
 group by type )
GO
/****** Object:  UserDefinedFunction [dbo].[owo]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[owo](@maker char(1), @model varchar(4))
returns table 
as 
return 
	select max([All].price) as maxPrice, [type]
	from (select 'pc' as type, price from Product
		  inner join pc on product.model = pc.model where maker = @maker and product.model = @model
		  union
		  select 'laptop' as type, price from Product
		  inner join laptop on product.model = laptop.model where maker = @maker and product.model = @model
		  union
		  select 'printer' as type, price from Product
		  inner join printer on product.model = printer.model where maker = @maker and product.model = @model
		  )	as [All]
	group by [type]

GO
/****** Object:  UserDefinedFunction [dbo].[tt]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[tt] (@maker char(1))
returns table
as
	return (select count(model) as [Count]
			from Product 
			where maker = @maker 
			group by [type])

GO
/****** Object:  Index [PK_Laptop]    Script Date: 20.12.2017 15:13:25 ******/
ALTER TABLE [dbo].[Laptop] ADD  CONSTRAINT [PK_Laptop] PRIMARY KEY NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PC]    Script Date: 20.12.2017 15:13:25 ******/
ALTER TABLE [dbo].[PC] ADD  CONSTRAINT [PK_PC] PRIMARY KEY NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Printer]    Script Date: 20.12.2017 15:13:25 ******/
ALTER TABLE [dbo].[Printer] ADD  CONSTRAINT [PK_Printer] PRIMARY KEY NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_Product]    Script Date: 20.12.2017 15:13:25 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [PK_Product] PRIMARY KEY NONCLUSTERED 
(
	[model] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Laptop]  WITH CHECK ADD  CONSTRAINT [FK_Laptop_Product] FOREIGN KEY([model])
REFERENCES [dbo].[Product] ([model])
GO
ALTER TABLE [dbo].[Laptop] CHECK CONSTRAINT [FK_Laptop_Product]
GO
ALTER TABLE [dbo].[PC]  WITH CHECK ADD  CONSTRAINT [FK_PC_Product] FOREIGN KEY([model])
REFERENCES [dbo].[Product] ([model])
GO
ALTER TABLE [dbo].[PC] CHECK CONSTRAINT [FK_PC_Product]
GO
ALTER TABLE [dbo].[Printer]  WITH CHECK ADD  CONSTRAINT [FK_Printer_Product] FOREIGN KEY([model])
REFERENCES [dbo].[Product] ([model])
GO
ALTER TABLE [dbo].[Printer] CHECK CONSTRAINT [FK_Printer_Product]
GO
/****** Object:  StoredProcedure [dbo].[del]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------
create proc [dbo].[del] (@maker char(1),@count int out)
as 
 begin
declare @start int,@end int 
set @start = ( Select Count(model) as cnt1
               From Product
			   Where maker =@maker)
			   +
			   (Select Count (code) as cnt2
			    From PC 
				  inner join Product on PC.model=Product.model
				Where maker=@maker
				)+
				(Select Count (code) as cnt3
			    From Laptop 
				  inner join Product on Laptop.model=Product.model
				Where maker=@maker
				)+
				(Select Count (code) as cnt4
			    From Printer
				  inner join Product on Printer.model=Product.model
				Where maker=@maker
				)

delete from Product 
       where maker=@maker
delete from PC 
       from PC 
	    inner join Product on PC.model=Product.model
		Where maker=@maker
delete from Laptop
       from Laptop 
	    inner join Product on Laptop.model=Product.model
		Where maker=@maker
delete from Printer
       from Printer
	    inner join Product on Printer.model=Product.model
		Where maker=@maker
set @end= ( Select Count(model) as cnt1
               From Product
			   Where maker =@maker)
			   +
			   (Select Count (code) as cnt2
			    From PC 
				  inner join Product on PC.model=Product.model
				Where maker=@maker
				)+
				(Select Count (code) as cnt3
			    From Laptop 
				  inner join Product on Laptop.model=Product.model
				Where maker=@maker
				)+
				(Select Count (code) as cnt4
			    From Printer
				  inner join Product on Printer.model=Product.model
				Where maker=@maker
				) 
set @count=@start-@end 
 end 
GO
/****** Object:  StoredProcedure [dbo].[del1]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[del1] (@maker char(1),@count int out)
as 
 begin
declare @start int,@end int 
set @start = ( Select Count(model) as cnt1
               From Product
			   Where maker =@maker)
			   +
			   (Select Count (pc.model) as cnt2
			    From PC 
				  inner join Product on PC.model=Product.model
				Where maker=@maker
				)+
				(Select Count (Laptop.model) as cnt3
			    From Laptop 
				  inner join Product on Laptop.model=Product.model
				Where maker=@maker
				)+
				(Select Count (Printer.model) as cnt4
			    From Printer
				  inner join Product on Printer.model=Product.model
				Where maker=@maker
				)

delete from Product 
       where maker=@maker
delete from PC 
       from PC 
	    inner join Product on PC.model=Product.model
		Where maker=@maker
delete from Laptop
       from Laptop 
	    inner join Product on Laptop.model=Product.model
		Where maker=@maker
delete from Printer
       from Printer
	    inner join Product on Printer.model=Product.model
		Where maker=@maker
set @end= ( Select Count(model) as cnt1
               From Product
			   Where maker =@maker)
			   +
			   (Select Count (PC.model) as cnt2
			    From PC 
				  inner join Product on PC.model=Product.model
				Where maker=@maker
				)+
				(Select Count (Laptop.model) as cnt3
			    From Laptop 
				  inner join Product on Laptop.model=Product.model
				Where maker=@maker
				)+
				(Select Count (Printer.model) as cnt4
			    From Printer
				  inner join Product on Printer.model=Product.model
				Where maker=@maker
				) 
set @count=@start-@end 
 end 
GO
/****** Object:  StoredProcedure [dbo].[del2]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[del2] (@maker char(1),@count int out)
as 
 begin
declare @start int,@end int 
set @start = ( Select Count(model) as cnt1
               From Product
			   Where maker =@maker)
			   +
			   (Select Count (pc.model) as cnt2
			    From PC 
				  inner join Product on PC.model=Product.model
				Where maker=@maker
				)+
				(Select Count (Laptop.model) as cnt3
			    From Laptop 
				  inner join Product on Laptop.model=Product.model
				Where maker=@maker
				)+
				(Select Count (Printer.model) as cnt4
			    From Printer
				  inner join Product on Printer.model=Product.model
				Where maker=@maker
				)

delete from Product 
       where maker=@maker
delete from PC 
       from PC 
	    inner join Product on PC.model=Product.model
		Where maker=@maker
delete from Laptop
       from Laptop 
	    inner join Product on Laptop.model=Product.model
		Where maker=@maker
delete from Printer
       from Printer
	    inner join Product on Printer.model=Product.model
		Where maker=@maker
set @end= ( Select Count(model) as cnt1
               From Product
			   Where maker =@maker)
			   +
			   (Select Count (PC.model) as cnt2
			    From PC 
				  inner join Product on PC.model=Product.model
				Where maker=@maker
				)+
				(Select Count (Laptop.model) as cnt3
			    From Laptop 
				  inner join Product on Laptop.model=Product.model
				Where maker=@maker
				)+
				(Select Count (Printer.model) as cnt4
			    From Printer
				  inner join Product on Printer.model=Product.model
				Where maker=@maker
				) 
set @count=@start-@end 
 end 
GO
/****** Object:  StoredProcedure [dbo].[deleteMaker]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[deleteMaker] (@maker char(1), @count int out)
as
begin
	declare @start int, @end int
	set @start = (select count(*) as [productcount] from Product) +
				 (select count(*) as [pccount]      from PC ) +
				 (select count(*) as [laptopcount]  from Laptop ) +
				 (select count(*) as [printercount] from Printer )

	delete from PC 
		from PC join Product on PC.model = Product.model
	    where maker = @maker 
	delete from Laptop
		from Laptop join Product on Laptop.model = Product.model
	    where maker = @maker
	delete from Printer 
		from Printer join Product on Printer.model = Product.model
	    where maker = @maker
	delete from Product where maker = @maker
	
	set @end = (select count(*) as [productcount] from Product) +
				 (select count(*) as [pccount]      from PC ) +
				 (select count(*) as [laptopcount]  from Laptop ) +
				 (select count(*) as [printercount] from Printer ) 	

	set @count = @start - @end
end
GO
/****** Object:  StoredProcedure [dbo].[MyProc]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[MyProc] (@maker char(1), @count int out)
as
	declare @start int
	declare @end int
	set @start = (select count(*) as allCounts from product) 
					+ (select count(*) as countsPc from PC)
					+ (select count(*) as countsLaptop from Laptop)
					+ (select count(*) as countsPrinter from Printer)
begin
   delete from PC
	from PC join Product on PC.model = Product.model
   delete from Printer
	from Printer join Product on Printer.model = Product.model
   delete from Laptop
	from Laptop join Product on Laptop.model = Product.model
   delete from Product where maker = @maker

   	set @end = (select count(*) as allCounts from product) 
					+ (select count(*) as countsPc from PC)
					+ (select count(*) as countsLaptop from Laptop)
					+ (select count(*) as countsPrinter from Printer)
	set @count = @end - @start
end
GO
/****** Object:  StoredProcedure [dbo].[new]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[new](@model varchar(4),@maker char(1)
                    ,@speed decimal(4,0),@ram decimal(4,0)
					,@hd decimal(4,0),@price float
					,@cd varchar(3))
as
begin 
 if(not Exists (Select *
                 From Product 
				 Where Product.model=@model))
insert into Product (maker,model,type)
values (@maker,@model,'PC')

declare @newCode int
set @newCode =(Select Max(Code)
              From PC
               )+1
insert into PC(code,model,speed,ram,hd,cd,price)
values(@newCode,@model,@speed,@ram,@hd,@cd,@price)
end
GO
/****** Object:  StoredProcedure [dbo].[new1]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[new1](@model varchar(4),@maker char(1),@speed decimal(4,0),@ram decimal(4,0),@hd decimal(4,0),@price float,@cd varchar(3))
as
begin

if(not exists(Select *
              From Product
			  Where Product.model=@model))
insert into Product(model,maker,type)
values(@model,@maker,'PC')

declare @newCode int 
set @newcode=
(Select Max(code)
From PC) +1

insert into PC(model,PC.cd,pc.hd,pc.code,pc.price,pc.ram,pc.speed)
values (@model,@cd,@hd,@newCode,@price,@ram,@speed)

end

exec dbo.new1 '54','W',100,3,4,4500,'50' 

Select *
From Product

Select *
From PC
GO
/****** Object:  StoredProcedure [dbo].[plll]    Script Date: 20.12.2017 15:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
create procedure poghos
(@name varchar(20), @color char(1)) as
begin
declare @Id int
set @Id = (select MAX(V_ID) from utV) + 1
insert into utV (V_ID, V_NAME, V_COLOR)
values (@Id, @name, @color)
end
*/

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
USE [master]
GO
ALTER DATABASE [pproduct] SET  READ_WRITE 
GO
