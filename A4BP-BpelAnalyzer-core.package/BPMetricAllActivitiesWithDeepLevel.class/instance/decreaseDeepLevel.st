action
decreaseDeepLevel
	deepLevel := deepLevel - 1.
	deepLevel <= 0
		ifTrue: [ deepLevel := 0 ]