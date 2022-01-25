visitors
visitBPPick: aBPPick
	self visitBPActivity: aBPPick.
	aBPPick lstBPOnMessage do:[ :act | act accept: self].
	^ lstActivities