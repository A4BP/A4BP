tokenizing
nextDelimitedByAny: aCharacterCollection
	writeStream reset.
	[readStream atEnd
		or: [aCharacterCollection includes: readStream peek]]
		whileFalse: [writeStream nextPut: readStream next].
	^ writeStream contents.