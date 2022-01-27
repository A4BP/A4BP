private
parseUpToAnyNotSkipping: aCollection afterNext: aCharacter
	aCharacter
		ifNotNil: [
			(self parseNext: aCharacter)
				ifFalse: [^ '']].

	writeStream reset.
	[readStream atEnd
		or: [aCollection includes: readStream peek]]
		whileFalse: [writeStream nextPut: readStream next].
	^ writeStream contents.