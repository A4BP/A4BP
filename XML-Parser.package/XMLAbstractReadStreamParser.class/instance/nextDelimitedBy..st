tokenizing
nextDelimitedBy: aCharacter
	writeStream reset.
	[readStream atEnd
		or: [readStream peek = aCharacter]]
		whileFalse: [writeStream nextPut: readStream next].
	^ writeStream contents.