printing
printOn: aStream
	super printOn: aStream.

	aStream
		nextPut: $(;
		nextPutAll: self method;
		space;
		nextPutAll: self url;
		nextPut: $).