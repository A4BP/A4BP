enumerating
allNodesDo: aBlock
	aBlock value: self.
	self hasChildren
		ifTrue: [self nodesDo: [:each | each allNodesDo: aBlock]]