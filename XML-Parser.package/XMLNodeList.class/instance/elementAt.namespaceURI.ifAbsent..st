accessing
elementAt: aName namespaceURI: aURI ifAbsent: aBlock
	^ (self elementsAt: aName)
		detect: [:each | each namespaceURI = aURI]
		ifNone: aBlock