errors
errorExpectedReferenceTerminatorFor: aDescription butGot: aCharacter
	self
		formatParseError:
			'Expected {1} reference ";" terminator but got "{2}" instead'
		with: aDescription
		with: aCharacter