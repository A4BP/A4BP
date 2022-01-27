tokenizing - dtd
nextNmtokenOnWriteStream
	"matches the nmtoken production"
	(NameChars xmlParserIncludes: streamReader peek)
		ifFalse: [self errorExpected: 'name token'].
	writeStream nextPut: streamReader next.
		
	[NameChars xmlParserIncludes: streamReader peek]
		whileTrue: [writeStream nextPut: streamReader next].