use Company


Select p.*, e.ssn, e.firstName
from project p inner join Works_On w on w.projectNumber=p.projectNumber inner join Employee e on e.SSN=w.employeeSSN  where  (e.firstName LIKE 'D%' or e.firstName LIKE 'K%' or e.firstName LIKE 'M%');
/*	  11617	 1855361	    863    FN Index
	  12769	 1855361		965	   No Index
	*/