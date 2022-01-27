accessing
descendentElementsNamed: aName namespaceURI: aURI
	^ self descendentElementsSelect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aURI]]