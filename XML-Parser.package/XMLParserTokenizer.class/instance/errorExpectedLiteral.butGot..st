errors
errorExpectedLiteral: anExpectedCharacterOrString butGot: aReceivedCharacterOrString
	self
		formatParseError: 'Expected "{1}" but got "{2}" instead' 
		with: anExpectedCharacterOrString
		with: aReceivedCharacterOrString