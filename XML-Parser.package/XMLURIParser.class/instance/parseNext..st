private
parseNext: aCharacter
	(readStream atEnd not
		and: [readStream peek == aCharacter])
		ifTrue: [
			readStream next.
			^ true]
		ifFalse: [^ false]