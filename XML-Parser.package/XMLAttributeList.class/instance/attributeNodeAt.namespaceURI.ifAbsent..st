accessing
attributeNodeAt: aLocalName namespaceURI: aURI ifAbsent: aBlock
	^ self
		detect: [:each |
			each name = aLocalName
				and: [each namespaceURI = aURI]]
		ifNone: aBlock