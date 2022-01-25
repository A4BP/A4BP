deprecated
descendentElementsDetect: aBlock ifNone: anExceptionBlock
	self deprecated: 'use #descendantElementsDetect:ifNone: instead'.
	^ self
		descendantElementsDetect: aBlock
		ifNone: anExceptionBlock.