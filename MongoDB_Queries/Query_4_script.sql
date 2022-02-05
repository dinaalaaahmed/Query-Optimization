
db.employee10th.aggregate([

   {
    $lookup: {
    from: "job10th",
    let: { jobId: "$jobID", salary :"$salary" },
      pipeline: [
        {
          $match: {
            $expr: {
              $and: [
              { $eq: ["$ID", "$$jobId"] },
                 {
                 $gt: ["$maxSalary", "$$salary"],
             },
             {
                 $gt: ["$$salary", 1000],
             }
              ],
            },
          },
        },
      ],
      as: "tb3",
    },
    
  },
    { "$lookup": {
      "from": "employee10th",
      "localField": "SSN",
      "foreignField": "supervisorSSN",
        "as": "tb2", 
       }},
       { "$match" : { "tb3" : {$ne: []}} },
       { "$project": {  "tb2":0, tb3: 0 } }
])