adding
addGeneralEntity: aName replacement: aReplacement from: aDocumentOrEntityURI
	self generalEntities
		at: aName
		ifAbsentPut: [
			DTDGeneralEntity 
				name: aName
				replacement: aReplacement
				uri: aDocumentOrEntityURI]