tokenizing - dtd
nextContentModelChoiceOrSequenceValuesOnWriteStream
	self
		nextContentModelParticleOnWriteStream;
		skipSeparatorsInDeclaration.
	streamReader peek == $|
		ifTrue: [self nextContentModelChoiceValuesOnWriteStream]
		ifFalse: [self nextContentModelSequenceValuesOnWriteStream].
	self nextContentModelUnaryOperatorOnWriteStream.