printing
printOn: aStream
	super printOn: aStream.

	aStream
		nextPut: $(;
		print: peekChar; "can be nil"
		nextPutAll: '; ';
		print: stream;
		space;
		print: nestedStreams;
		nextPut: $).