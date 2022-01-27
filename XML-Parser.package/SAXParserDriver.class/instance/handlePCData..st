handling
handlePCData: aString
	self elementNester isInElement
		ifFalse: [self errorCharacterDataOutsideElement].
	self isValidating
		ifTrue: [self validator validatePCData: aString].

	self saxHandler characters: aString.