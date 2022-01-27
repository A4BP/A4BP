accessing
name: aQualifiedName namespaceURI: aURI
	self
		declarePrefix: (aQualifiedName prefixBeforeLocalName) uri: aURI;
		name: aQualifiedName.