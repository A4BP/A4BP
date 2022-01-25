deprecated
descendentNodesDetect: aBlock ifNone: anExceptionBlock
	self deprecated: 'use #descendantNodesDetect:ifNone: instead'.
	^ self
		descendantNodesDetect: aBlock
		ifNone: anExceptionBlock.