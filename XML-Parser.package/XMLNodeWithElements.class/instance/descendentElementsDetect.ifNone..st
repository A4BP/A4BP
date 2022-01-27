enumerating
descendentElementsDetect: aBlock ifNone: anExceptionBlock
	self descendentElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [^ each]].
	^ anExceptionBlock value.