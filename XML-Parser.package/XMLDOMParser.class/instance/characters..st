handling - content
characters: aString
	(self isInCDataSection
		and: [self preservesCDataNodes])
		ifTrue: [self topNodeAdd: (self nodeFactory newCData: aString)]
		ifFalse: [self topNodeAddString: aString]