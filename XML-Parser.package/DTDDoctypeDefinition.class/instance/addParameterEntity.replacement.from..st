adding
addParameterEntity: aName replacement: aReplacement from: aDocumentOrEntityURI
	self parameterEntities
		at: aName
		ifAbsentPut: [
			DTDParameterEntity
				name: aName
				replacement: aReplacement
				uri: aDocumentOrEntityURI]