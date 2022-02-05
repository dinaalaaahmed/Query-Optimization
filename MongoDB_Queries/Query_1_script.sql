db.Dependent_Employee.find({dependentSSN: {$in:
db.Employee.find({SSN: {$in:
db.Works_On.find({hours: {$gt: 4000}})
.map(function(Works_On){return Works_On.employeeSSN}) }})
.map(function(Employee){return Employee.SSN}) }});