accessing
defaultEncodingName
	^ self basicEncodingNames
		at: 1
		ifAbsent: ['']