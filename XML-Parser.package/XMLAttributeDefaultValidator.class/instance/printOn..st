printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: self attribute;
		nextPutAll: '="';
		nextPutAll: self defaultValue;
		nextPutAll: '")'.