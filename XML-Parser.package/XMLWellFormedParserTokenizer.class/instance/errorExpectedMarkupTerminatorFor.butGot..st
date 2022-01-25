errors
errorExpectedMarkupTerminatorFor: aDescription butGot: aCharacter
	self
		formatParseError:
			'Expected ">" {1} terminator but got "{2}" instead'
		with: aDescription
		with: aCharacter