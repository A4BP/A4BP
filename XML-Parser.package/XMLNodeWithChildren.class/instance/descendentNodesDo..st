enumerating
descendentNodesDo: aBlock
	self hasChildren
		ifTrue: [self nodesDo: [:each | each allNodesDo: aBlock]]