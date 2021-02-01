DELETE
  FROM [JobQueueResults]
  where JobId in (
  
	  SELECT [JobID]
	  FROM [JobQueue]
	  where TimeAdded < dateadd(week,-2,getdate())
  
  )