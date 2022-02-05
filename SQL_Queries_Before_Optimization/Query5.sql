use Company


select distinct p.*, e.ssn, e.firstName
from project p
inner join works_on wo on wo.projectNumber = p.projectNumber
inner join employee e on e.ssn = wo.employeeSSN
where exists (select firstName from Employee where  (firstName LIKE 'D%' or firstName LIKE 'K%' or firstName LIKE 'M%') and firstName = e.firstName); 
/*	  11809	 1855361		703		FN Index
	  14604  1855361		912		No Index
*/

