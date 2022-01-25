errors
errorExpected: aDescription butGot: aCharacterOrString
	self
		formatParseError: 'Expected {1} but got "{2}" instead'
		with: aDescription
		with: aCharacterOrString