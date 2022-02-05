Use Company


select distinct E.firstName,E.lastName,D.departmentName,DL.departmentLocation from Employee E, Department D, Department_Locations DL where E.departmentNumber=D.departmentNumber and D.departmentNumber=DL.departmentNumber and E.sex='M' and (DL.departmentLocation = '10 Clarendon Avenue' or D.departmentName = 'Web') ; 

/*	14350 1105271 2439 Noindex
*/

