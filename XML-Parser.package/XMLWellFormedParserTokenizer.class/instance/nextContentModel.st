tokenizing - dtd
nextContentModel
	self expectSeparatorsInDeclaration.
	streamReader peek == $A
		ifTrue: [^ self expectNextAll: 'ANY'].
	streamReader peek == $E
		ifTrue: [^ self expectNextAll: 'EMPTY'].
	
	writeStream
		reset;
		nextPut: (self expectNext: $().
	self skipSeparatorsInDeclaration.
	streamReader peek == $#
		ifTrue: [self nextMixedContentListValuesOnWriteStream]
		ifFalse: [self nextContentModelChoiceOrSequenceValuesOnWriteStream].

	^ writeStream contents.