enumerating
allElementsNamed: aName do: aBlock
	self allElementsDo: [:each |
		(each isNamed: aName)
			ifTrue: [aBlock value: each]]