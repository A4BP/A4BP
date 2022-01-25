printing
printWithConvertableStream: aConvertableStream on: aPrintStream
	aPrintStream
		print: self;
		nextPut: $(;
		print: aConvertableStream;
		nextPut: $)