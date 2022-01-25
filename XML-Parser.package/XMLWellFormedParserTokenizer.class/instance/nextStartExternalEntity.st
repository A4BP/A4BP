tokenizing
nextStartExternalEntity
	driver decodesCharacters
		ifTrue: [streamReader detectEncoding].
	self nextXMLTextDeclaration.