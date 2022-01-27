accessing
entityCacheAt: aURI ifAbsent: aBlock
	^ self entityCache
		at: aURI
		ifAbsent: aBlock