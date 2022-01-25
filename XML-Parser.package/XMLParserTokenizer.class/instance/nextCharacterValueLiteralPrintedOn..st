decoding
nextCharacterValueLiteralPrintedOn: aStream
	"do not limit the number of chars read, because char values can
	have an arbitrary number of leading zeros"
	^ (XMLSmallIntegerReader on: streamReader)
		printStream: aStream;
		nextIntegerWithBase: 16
			andPrefixes: self hexCharacterValueLiteralPrefixes
			orBase: 10