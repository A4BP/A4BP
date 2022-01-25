adding
headerValuesAt: aKey add: aValue
	self webClientResponse
		addHeader: aKey
		value: aValue.
	^ aValue.