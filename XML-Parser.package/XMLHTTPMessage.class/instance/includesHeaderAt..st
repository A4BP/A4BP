testing
includesHeaderAt: aKey
	self
		headerAt: aKey
		ifAbsent: [^ false].
	^ true.