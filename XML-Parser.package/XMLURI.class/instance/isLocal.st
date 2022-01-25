testing
isLocal
	^ self isFile
		or: [self isRelative
			and: [self hasHost not]]