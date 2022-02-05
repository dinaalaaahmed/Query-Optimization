db.employee10th.aggregate([
  { "$lookup": {
  "from": "workson10th",
  "localField": "SSN",
    "foreignField": "employeeSSN",
    "as": "tb2"

  }},
  { "$lookup": {
  "from": "project10th",
  "localField": "tb2.projectNumber",
  "foreignField": "projectNumber",
    "as": "tb3"    
   
  }},
 
  { $match:  { $or : [{ firstName : /^D/ },{ firstName : /^K/ },{ firstName : /^M/ }], "tb2" :{ $ne : []} }
 },
 { "$project": { "tb2": 0, "tb3": 1, 'firstName':1, 'SSN': 1 } }
])
