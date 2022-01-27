element handling
handleElement: anElementName namespaceURI: aURI withClass: aClass
	(self elementClassesByName
		at: anElementName
		ifAbsentPut: [Dictionary new])
			at: aURI put: aClass