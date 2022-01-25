visitors
visitBPActivityComposite: aBPActivityComposite
	self visitBPActivity: aBPActivityComposite.
	aBPActivityComposite lstActivities do:[ :act | act accept: self].
	^ lstActivities 