printing
printOn: aStream
	super printOn: aStream.

	aStream nextPut: $(.
	self printLabelOn: aStream.
	aStream nextPutAll: '->'.
	nextState
		ifNotNil: [
			nextState printLabelOn: aStream].
	aStream nextPut: $).