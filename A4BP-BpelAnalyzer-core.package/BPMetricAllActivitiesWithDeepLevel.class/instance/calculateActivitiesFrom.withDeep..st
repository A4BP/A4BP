action
calculateActivitiesFrom: lstAct withDeep:aDeepLevel
	targetdeepLevel :=aDeepLevel.
	self checkDeep ifTrue:[^ self].
	lstAct do: [ :act | act accept: self ]
