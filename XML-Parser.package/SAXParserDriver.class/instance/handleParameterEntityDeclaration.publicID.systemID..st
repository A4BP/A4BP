handling - dtd
handleParameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	self resolvesExternalEntities
		ifTrue: [
			self doctypeDefinition
				addExternalParameterEntity: aName
				resolver: self externalEntityResolver
				uri: aSystemID
				from: self currentURI].

	self saxHandler
		parameterEntityDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID.