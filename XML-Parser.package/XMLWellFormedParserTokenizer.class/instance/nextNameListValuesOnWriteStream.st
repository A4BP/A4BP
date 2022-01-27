tokenizing - dtd
nextNameListValuesOnWriteStream
	[streamReader peek == $)]
		whileFalse: [
			writeStream nextPut: (self expectNext: $|).
			self
				skipSeparatorsInDeclaration;
				nextNameOnWriteStream;
				skipSeparatorsInDeclaration].
	writeStream nextPut: streamReader next.