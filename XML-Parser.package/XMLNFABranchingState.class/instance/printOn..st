printing
printOn: aStream
	super printOn: aStream.

	aStream nextPut: $(.
	self printLabelOn: aStream.
	aStream nextPut: $(.
	leftBranch
		ifNotNil: [
			leftBranch printLabelOn: aStream].
	aStream nextPut: $|.
	rightBranch
		ifNotNil: [
			rightBranch printLabelOn: aStream].
	aStream nextPutAll: '))'.