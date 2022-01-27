testing
hasDirectoryPath
	^ pathSegments notEmpty
		and: [pathSegments last isEmpty]