decoding
nextFromStream: aStream
	aStream atEnd
		ifTrue: [^ nil]
		ifFalse: [^ aStream next asCharacter]