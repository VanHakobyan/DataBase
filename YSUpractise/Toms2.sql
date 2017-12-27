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
