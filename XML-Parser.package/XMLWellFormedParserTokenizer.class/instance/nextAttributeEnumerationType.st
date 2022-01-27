tokenizing - dtd
nextAttributeEnumerationType
	writeStream
		reset;
		nextPut: (self expectNext: $().
	self
		skipSeparatorsInDeclaration;
		nextNmtokenOnWriteStream;
		skipSeparatorsInDeclaration.
	[streamReader peek == $)]
		whileFalse: [
			writeStream nextPut: (self expectNext: $|).
			self
				skipSeparatorsInDeclaration;
				nextNmtokenOnWriteStream;
				skipSeparatorsInDeclaration].
	writeStream nextPut: streamReader next.

	^ writeStream contents.