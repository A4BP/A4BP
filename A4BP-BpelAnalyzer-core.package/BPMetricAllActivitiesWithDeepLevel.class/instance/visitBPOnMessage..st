initialization
visitBPOnMessage: aBPOnMessage
	self checkDeep ifTrue:[^ self].
	self increaseDeepLevel.
	super visitBPOnMessage: aBPOnMessage.
	self decreaseDeepLevel.