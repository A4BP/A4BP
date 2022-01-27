testing
hasAbsolutePath
	^ pathSegments notEmpty
		and: [pathSegments first isEmpty]