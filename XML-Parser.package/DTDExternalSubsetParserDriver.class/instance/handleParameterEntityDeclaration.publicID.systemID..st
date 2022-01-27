handling - dtd
handleParameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	self doctypeDefinition
		addExternalParameterEntity: aName
		resolver: self externalEntityResolver
		uri: aSystemID
		from: self currentURI