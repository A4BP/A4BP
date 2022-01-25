accessing
headerAt: aKey put: aValue
	self zincResponse headers
		at: aKey
		put: aValue.
	^ aValue.