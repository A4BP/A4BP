searching
findElementNamed: aName namespaceURI: aURI
	^ self allElementsDetect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aURI]]