tokenizing - dtd
nextContentModelParticleOnWriteStream
	self skipSeparatorsInDeclaration.
	streamReader peek == $(
		ifTrue: [
			writeStream nextPut: streamReader next.
			self nextContentModelChoiceOrSequenceValuesOnWriteStream]
		ifFalse: [
			self
				nextNameOnWriteStream;
				nextContentModelUnaryOperatorOnWriteStream]