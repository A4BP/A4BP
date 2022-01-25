removing
removeHeaderAt: aKey
	^ self
		removeHeaderAt: aKey
		ifAbsent: [self errorRemovingAbsentHeader: aKey]