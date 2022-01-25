accessing
headerAt: aKey ifAbsent: aBlock
	^ self webClientRequest
		headerAt: aKey
		ifAbsent: aBlock