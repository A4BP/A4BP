adding
addExternalParameterEntity: aName resolver: aResolver uri: aSystemURI from: aDocumentOrEntityURI
	self parameterEntities
		at: aName
		ifAbsentPut: [
			aResolver
				resolveExternalParameterEntity: aName
				uri: aSystemURI
				from: aDocumentOrEntityURI]