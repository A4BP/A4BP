searching
findElementNamed: aName namespaceURI: aURI with: aBlock
	^ self allElementsDetect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aURI
				and: [aBlock value: each]]]