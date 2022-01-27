printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	self isExternal
		ifTrue: [
			aStream
				nextPut: ${;
				nextPutAll: self uri;
				nextPut: $}].
	aStream
		nextPutAll: self name;
		nextPut: $).