-------------------------------------------------------------
select V.V_ID,ISNULL(SUM(B.B_VOL),0) as g from utv  as V
left join utB as B on v.V_ID=b.B_V_ID
and b.B_Q_ID in (5,6,9,15,18)
where V.V_COLOR='G'
group by V.V_ID
------------------------------------------------------------------
create database BaseForV
create table WorkV
(Id int primary key,
 PDateTime datetime ,
 [owner] char(50) not null)
 
 Alter table WorkV add Constraint Constr
 unique ([owner])

 insert into WorkV
 values 
 (15265,'2011-10-10','Hakobyan Vanik'),
 (1265,'2011-10-11','Hakobyan Van'),
 (125,'2011-10-12','Hakobyan V.'),
 (15,'2011-10-13','Hakobyan V'),
 (1526,'2011-10-14','Hakobyan')

 delete from WorkV
 where PDateTime='2011-10-10'
   
 --------------------------------------------------------
