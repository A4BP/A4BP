initialization
visitBPActivity:aBPActivity
	self checkDeep ifTrue:[^ self].
	super visitBPActivity: aBPActivity.