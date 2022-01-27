encodings
convertFromEncoding: anEncoding
	driver decodesCharacters
		ifTrue: [streamReader convertFromEncoding: anEncoding]