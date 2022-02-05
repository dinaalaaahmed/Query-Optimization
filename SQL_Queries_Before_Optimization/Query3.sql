Use Company

select E.firstName,E.lastName,D.departmentName,DL.departmentLocation from Employee E, Department D, Department_Locations DL group by E.firstName,E.lastName,D.departmentName,DL.departmentLocation,E.sex,E.departmentNumber,D.departmentNumber,DL.departmentNumber,DL.departmentLocation,D.departmentName Having E.departmentNumber=D.departmentNumber and D.departmentNumber=DL.departmentNumber and E.sex='M' and (DL.departmentLocation = '10 Clarendon Avenue' or D.departmentName = 'Web') ; 

/*	14955 1105271 3259 Noindex
*/


