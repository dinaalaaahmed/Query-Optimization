use Company


SELECT distinct dep.*
FROM employee e
INNER JOIN Dependent_Employee dep ON e.ssn = dep.dependentSSN
WHERE e.ssn IN ( SELECT wo.employeeSSN
FROM works_on wo	
WHERE wo.hours >4000) ;

/*17669 2687337 294	Index (Hours,DependentSSN)*/
/*20759 2687337 321	NoIndex*/
