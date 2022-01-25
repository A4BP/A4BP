adding
headerValuesAt: aKey add: aValue
	self zincResponse headers
		at: aKey
		add: aValue.
	^ aValue.