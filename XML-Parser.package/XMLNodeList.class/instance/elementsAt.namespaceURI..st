accessing
elementsAt: aName namespaceURI: aURI
	^ (self elementsAt: aName) select: [:each | each namespaceURI = aURI]