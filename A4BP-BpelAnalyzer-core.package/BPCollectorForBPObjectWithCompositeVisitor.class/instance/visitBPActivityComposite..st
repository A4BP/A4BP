visitors
visitBPActivityComposite: aBPActivityComposite
	self addBPObject: aBPActivityComposite.
	aBPActivityComposite lstActivities do:[ :act | act accept: self].
	^ lstBPObj 