converting
asRetrievableResource
	^ self isLocal
		ifTrue: [self asXMLFileHandle]
		ifFalse: [self asXMLHTTPRequest]