accessing
nextPut: aCharacter
	streamConverter
		nextPut: aCharacter
		toStream: stream.
	^ aCharacter.