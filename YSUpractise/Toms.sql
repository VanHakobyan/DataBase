--one
-------------------------------------------------------------
select V.V_ID,ISNULL(SUM(B.B_VOL),0) as g from utv  as V
left join utB as B on v.V_ID=b.B_V_ID
and b.B_Q_ID in (5,6,9,15,18)
where V.V_COLOR='G'
group by V.V_ID


--two
--------------------------------------------------------------
select distinct * from Battles B1
join Battles B2 on B1.date<B2.date
where not exists (select * from Battles as B3 where B3.date>B1.date and B3.date<B2.date)


--three
------------------------------------------------------------------
create database BaseForWork
use BaseForWork
create table WorkReal(
code int primary key,
PDate datetime,
[owner] varchar(50) not null)

alter table WorkReal 
add constraint inOwner unique ( [owner])

insert WorkReal
values 
(15265,'2011-10-10','Hakobyan Vanik'),
(1265,'2011-10-11','Hakobyan Van'),
(125,'2011-10-11','Hakobyan V.'),
(15,'2011-10-13','Hakobyan V'),
(1526,'2011-10-14','Hakobyan')

 --select * from WorkReal

delete from WorkReal where PDate ='2011-10-11'
drop database BaseForWork
 --------------------------------------------------------
 
 --four
 -----------------------------------------------------------
