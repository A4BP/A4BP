adding
addExternalGeneralEntity: aName resolver: aResolver uri: aSystemURI from: aDocumentOrEntityURI
	self generalEntities
		at: aName
		ifAbsentPut: [
			aResolver
				resolveExternalGeneralEntity: aName
				uri: aSystemURI
				from: aDocumentOrEntityURI]