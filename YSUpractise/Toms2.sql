one-------
-------------------------------------------------------
select p.Pro_No,p.Pro_Title,p.Pro_MNG, isnull(sum(w.Emp_Sal),0) from Projects P 
join Workers W on P.Pro_No=w.Pro_NO
where W.Emp_Sal>100000
group by p.Pro_No,p.Pro_Title,p.Pro_MNG
------------------------------------------------------------

two----
--------------------------------------------------
select  * from utv V
join utB B on B.B_V_ID=v.V_ID
where B.B_DATETIME in
(
select max(B_DATETIME) as b from utB group by B_V_ID
)
-------------------------------------------------------

three---Mane
--------------------------------------------
create database BaseForWork
use BaseForWork --es karas chgres

create table Transactionn(
 code int primary key not null,
 [account] char(12),
 [type] char,
 Amount money)

alter table Transactionn --(code, [account], Amount) petq chi
add constraint myy  check ( 0 < Amount and Amount < 10000000)

insert into Transactionn (code,account,Amount)-- nshi inchnes uzum avelacnel
 values 
 (1131, 'depet', 5000),
 (1125, 'credit', 6000)

select * from Transactionn
delete from Transactionn where code=1131

select * from Transactionn
drop table Transactionn
-------------------------------------------------------
