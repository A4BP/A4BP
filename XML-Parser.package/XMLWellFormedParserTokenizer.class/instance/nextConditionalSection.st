tokenizing - dtd
nextConditionalSection
	"skip ["
	streamReader next.
	self
		skipSeparatorsInDeclaration;
		expectNext: $I.
	streamReader peek == $N
		ifTrue: [self nextStartIncludeSection]
		ifFalse: [self nextIgnoreSection].