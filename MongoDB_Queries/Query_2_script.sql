
db.employee10th.aggregate([

   {
    $lookup: {
    from: "job10th",
    let: { jobId: "$jobID", salary :"$salary", jobTitle: "$jobTitle" },
      pipeline: [
        {
          $match: {
            $expr: {
            $or: [
              { $eq: ["$ID", "$$jobId"] },
                 {
                 $eq: ["$maxSalary", "$$salary"],
             },
             {
             $eq: ["$$jobTitle", "Dr"],
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
  { "$match" : { "tb3" : {$ne: []}} },
  { "$project": {  tb3: 0 } }
])
   