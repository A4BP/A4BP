tokenizing
nextPrologToken
	streamReader skipSeparators.
	self nextStartMarkupToken.
	streamReader peek == $?
		ifTrue: [^ self nextPI].
	self nextNonPIPrologOrContentMarkupToken.