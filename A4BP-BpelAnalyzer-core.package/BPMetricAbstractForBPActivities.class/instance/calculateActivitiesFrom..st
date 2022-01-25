action
calculateActivitiesFrom: lstAct
	lstAct do: [ :act | act accept: self ]