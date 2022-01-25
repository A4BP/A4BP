adding
headerValuesAt: aKey add: aValue
	self webClientRequest
		addHeader: aKey
		value: aValue.
	^ aValue.