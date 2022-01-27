testing
hasRootPath
	^ pathSegments size = 2
		and: [pathSegments allSatisfy: [:each | each isEmpty]]