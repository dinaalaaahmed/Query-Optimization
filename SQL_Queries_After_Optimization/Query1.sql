use Company

SELECT dep.*
FROM employee e, Dependent_Employee dep, works_on wo	
WHERE e.ssn = dep.dependentSSN AND e.ssn = wo.employeeSSN AND wo.hours >4000;

/*12695	2687337 117 Index (Hours,DependentSSN)*/
/*13500	2687337 145 NoIndex*/