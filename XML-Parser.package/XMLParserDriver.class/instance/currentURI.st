accessing
currentURI
	^ self uris lastOrNil ifNil: [self documentURI]