Use Company


select top 100 E.*  from Employee E inner join Job J on J.ID=E.jobID or J.maxSalary=E.salary where E.salary > 1000 and J.jobTitle='Dr' ;

/*65466 100 2026 NoIndex*/

