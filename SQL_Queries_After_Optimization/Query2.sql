Use Company

select top 100 * from ((select  E.*  from Employee E inner join Job J on J.ID=E.jobID where E.salary > 1000 and J.jobTitle='Dr') Union (select E.*  from Employee E inner join Job J on J.maxSalary=E.salary where E.salary > 1000 and J.jobTitle='Dr' )) as x ;
/*138   100 4.129 NoIndex*/
