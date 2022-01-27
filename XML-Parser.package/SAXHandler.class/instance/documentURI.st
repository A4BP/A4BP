accessing
documentURI
	^ documentURI ifNil: [documentURI := self defaultDocumentURI]