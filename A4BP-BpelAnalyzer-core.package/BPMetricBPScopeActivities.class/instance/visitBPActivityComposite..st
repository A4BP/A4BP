visitors
visitBPActivityComposite: aBPActivityComposite
	aBPActivityComposite lstActivities do:[ :act | act accept: self].
	^ lstActivities 