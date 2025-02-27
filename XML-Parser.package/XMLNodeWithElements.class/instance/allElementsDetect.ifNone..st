enumerating
allElementsDetect: aBlock ifNone: anExceptionBlock
	"Descend depth-first visiting each element with aBlock until one such evaluation
	of aBlock with an element is true, then return that element. If no evaluation is
	true, then return nil."

	self allElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [^ each]].
	^ anExceptionBlock value.