converting
asRetrievableResource
	^ self isLocalURI
		ifTrue: [XMLFileHandle path: self unescapedPath]
		ifFalse: [XMLHTTPRequest url: self asString]