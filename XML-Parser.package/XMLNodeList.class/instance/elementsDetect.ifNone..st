enumerating
elementsDetect: aBlock ifNone: anExceptionBlock
	^ self
		detect: [:each | each isElement and: [aBlock value: each]]
		ifNone: anExceptionBlock