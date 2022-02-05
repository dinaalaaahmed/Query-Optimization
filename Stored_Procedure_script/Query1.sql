create procedure proc4 (@hours decimal(10,2))
as BEGIN

SELECT distinct dep.*
FROM employee e
INNER JOIN Dependent_Employee dep ON e.ssn = dep.dependentSSN
WHERE e.ssn IN ( SELECT wo.employeeSSN
FROM works_on wo	
WHERE wo.hours >@hours) ;

END 
GO 


SET NOCOUNT OFF;
EXEC proc4 @hours = 4000
GO

