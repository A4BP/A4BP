testing
isRelative
	^ scheme isEmpty
		or: [host isEmpty
			and: [self isFileURI not]]