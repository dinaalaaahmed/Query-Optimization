db.employee10th.aggregate([
{ "$match": { sex: "M" }},
  { "$lookup": {
  "from": "department10th",
    "localField": "departmentNumber",
    "foreignField": "departmentNumber",
    "as": "tb2"
  }},
  { "$lookup": {
  "from": "departmentlocations10th",
    "localField": "tb2.departmentNumber",
    "foreignField": "departmentNumber",
    "as": "tb3",
    
  }},
    { $match: { $or :[{ 'tb2.departmentName': 'Web' }, {'tb3.departmentLocation': '10 Clarendon Avenue'}]}},
    { "$project": { "tb2.departmentName": 1, 'tb3.departmentLocation':1, "firstName":1, "lastName":1, } }
]);