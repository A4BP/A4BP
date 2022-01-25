accessing
headerAt: aKey put: aValue
	self webClientRequest
		removeHeader: aKey;
		addHeader: aKey value: aValue.
	^ aValue.