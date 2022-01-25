printing
printNameAndValueOn: aStream
	aStream
		nextPutAll: self attribute;
		nextPutAll: '="';
		nextPutAll: self value;
		nextPut: $"