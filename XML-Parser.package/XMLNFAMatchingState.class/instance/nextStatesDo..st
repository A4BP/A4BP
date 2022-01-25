enumerating
nextStatesDo: aBlock
	nextState
		ifNotNil: [aBlock value: nextState]