handling
handleEndDocument
	self elementNester endNesting.
	self isValidating
		ifTrue: [self validator validateEndDocument].

	self saxHandler endDocument.