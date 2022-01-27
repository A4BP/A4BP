accessing
attributeNodeAt: aLocalName namespaceURI: aURI
	^ self
		attributeNodeAt: aLocalName
		namespaceURI: aURI
		ifAbsent: [self defaultValue]