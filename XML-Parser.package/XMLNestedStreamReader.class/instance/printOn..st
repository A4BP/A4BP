printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: '(';
		print: peekChar;
		nextPutAll: '; ';
		print: stream.
	nestedStreams
		ifNotNil: [
			aStream
				space;
				print: nestedStreams].
	aStream nextPut: $).