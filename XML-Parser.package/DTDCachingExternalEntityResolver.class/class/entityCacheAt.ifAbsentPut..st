accessing
entityCacheAt: aURI ifAbsentPut: aBlock
	^ self entityCache
		at: aURI
		ifAbsentPut: aBlock