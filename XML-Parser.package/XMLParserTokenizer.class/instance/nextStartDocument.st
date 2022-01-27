tokenizing
nextStartDocument
	context := driver initialContext ifNil: [XMLXMLDeclarationContext new].
	(context supportsEncodingDetection
		and: [driver decodesCharacters])
		ifTrue: [streamReader detectCurrentEncoding].
	driver handleStartDocument.