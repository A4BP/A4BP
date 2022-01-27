instance creation
newElementNamed: aName namespaceURI: aURI
	^ (self nodeFactory
		newElementNamed: aName
		namespaceURI: aURI)
		configuration: self configuration