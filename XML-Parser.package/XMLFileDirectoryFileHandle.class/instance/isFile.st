testing
isFile
	^ self directoryEntry notNil
		and: [self directoryEntry isDirectory not]