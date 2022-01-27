tokenizing - dtd
nextContentModelSequenceValuesOnWriteStream
	[streamReader peek == $)]
		whileFalse: [
			writeStream nextPut: (self expectNext: $,).
			self
				nextContentModelParticleOnWriteStream;
				skipSeparatorsInDeclaration].
	writeStream nextPut: streamReader next.