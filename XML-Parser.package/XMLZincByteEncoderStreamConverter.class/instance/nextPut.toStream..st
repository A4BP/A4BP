encoding
nextPut: aCharacter toStream: aStream
	zincByteEncoder
		nextPut: aCharacter
		toStream: aStream