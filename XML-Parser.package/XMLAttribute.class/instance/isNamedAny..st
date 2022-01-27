testing
isNamedAny: aNameCollection
	^ aNameCollection
		includesQualifiedName: self name
		orLocalName: self localName