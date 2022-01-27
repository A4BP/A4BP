adding
addElementNamed: aName namespaceURI: aURI
	^ self addNode:
		(self nodeFactory
			newElementNamed: aName
			namespaceURI: aURI)