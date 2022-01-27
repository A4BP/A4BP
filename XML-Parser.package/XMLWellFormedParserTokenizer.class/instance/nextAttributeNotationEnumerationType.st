tokenizing - dtd
nextAttributeNotationEnumerationType
	writeStream
		reset;
		nextPutAll: 'NOTATION '.
	self expectSeparatorsInDeclaration.
	writeStream nextPut: (self expectNext: $().

	self
		skipSeparatorsInDeclaration;
		nextNameOnWriteStream;
		skipSeparatorsInDeclaration;
		nextNameListValuesOnWriteStream.

	^ writeStream contents.