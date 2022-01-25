initialization
visitBPActivityComposite: aBPActivityComposite
	self checkDeep ifTrue:[^ self].
	self increaseDeepLevel.
	super visitBPActivityComposite: aBPActivityComposite.
	self decreaseDeepLevel.