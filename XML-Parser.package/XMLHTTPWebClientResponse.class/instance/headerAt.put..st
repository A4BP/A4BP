accessing
headerAt: aKey put: aValue
	self webClientResponse
		removeHeader: aKey;
		addHeader: aKey value: aValue.
	^ aValue.