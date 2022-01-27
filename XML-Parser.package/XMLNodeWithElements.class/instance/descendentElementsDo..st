enumerating
descendentElementsDo: aBlock
	self hasChildren
		ifTrue: [self elementsDo: [:each | each allElementsDo: aBlock]]