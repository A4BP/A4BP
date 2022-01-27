testing
isLocalURI
	^ self isFileURI or: [self isRelative]