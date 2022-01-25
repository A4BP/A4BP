initialization
visitBPPick: aBPPick
	self checkDeep ifTrue:[^ self].
	self increaseDeepLevel.
	super visitBPPick: aBPPick.
	self decreaseDeepLevel.