instance creation
name: aQualifiedName namespaceURI: aURI attributes: aDictionaryOrArray
	^ (self name: aQualifiedName namespaceURI: aURI)
		setAttributes: aDictionaryOrArray