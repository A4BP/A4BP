enumerating
allElementsDo: aBlock
	aBlock value: self.
	self hasChildren
		ifTrue: [self elementsDo: [:each | each allElementsDo: aBlock]].