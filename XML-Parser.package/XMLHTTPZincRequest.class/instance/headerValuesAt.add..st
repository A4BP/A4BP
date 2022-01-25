adding
headerValuesAt: aKey add: aValue
	self zincRequest headers
		at: aKey
		add: aValue.
	^ aValue.