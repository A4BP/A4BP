accessing
allElementsNamed: aName namespaceURI: aURI
	^ self allElementsSelect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aURI]]