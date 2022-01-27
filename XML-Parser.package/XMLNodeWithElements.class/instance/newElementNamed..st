instance creation
newElementNamed: aName
	^ (self nodeFactory newElementNamed: aName)
		configuration: self configuration