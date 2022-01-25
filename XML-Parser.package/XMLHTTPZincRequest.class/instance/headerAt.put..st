accessing
headerAt: aKey put: aValue
	self zincRequest headers
		at: aKey
		put: aValue.
	^ aValue.