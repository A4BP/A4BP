handling
handleCData: aString
	self elementNester isInElement
		ifFalse: [self errorCharacterDataOutsideElement].
	self isValidating
		ifTrue: [self validator validatePCData: aString].

	self saxHandler
		startCData;
		startCDataSection;
		characters: aString;
		endCDataSection;
		endCData.