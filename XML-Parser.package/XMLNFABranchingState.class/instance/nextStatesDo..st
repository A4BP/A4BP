enumerating
nextStatesDo: aBlock
	leftBranch
		ifNotNil: [aBlock value: leftBranch].
	rightBranch
		ifNotNil: [aBlock value: rightBranch].