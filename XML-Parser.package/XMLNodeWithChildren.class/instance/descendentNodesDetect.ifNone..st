enumerating
descendentNodesDetect: aBlock ifNone: anExceptionBlock
	self descendentNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [^ each]].
	^ anExceptionBlock value.