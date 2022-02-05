use Company


select E.* from Employee E, Employee S, Job J where E.salary >1000 and E.supervisorSSN = S.SSN and E.jobID = J.ID and J.maxSalary >E.salary;

/*23743 1213512 1332 NoIndex
  18415 1213512 1322 Index (MaxSalary,Salary)
*/
