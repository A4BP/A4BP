testing
isNamed: aName
	^ aName
		isQualifiedName: self name
		orLocalName: self localName