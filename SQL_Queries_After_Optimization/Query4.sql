use Company

select E.* from Employee E INNER JOIN Job J ON E.jobID = J.ID where exists (select S.SSN from Employee S where E.supervisorSSN = S.SSN and E.salary>1000) and J.ID in(select ID from Job where maxSalary >E.salary )

/*14051 1213512 557 NoIndex
  14775 1213512 487 Index (MaxSalary,Salary)
*/
