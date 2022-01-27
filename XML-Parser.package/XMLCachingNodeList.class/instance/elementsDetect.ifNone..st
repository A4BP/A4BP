enumerating
elementsDetect: aBlock ifNone: anExceptionBlock
	^ self cachedElements
		detect: aBlock
		ifNone: anExceptionBlock