errors
errorExpectedAttributeEqualsSeparatorFor: anAttributeType butGot: aCharacter
	self
		formatParseError:
			'Expected {1} attribute name-value "=" separator but got "{2}" instead'
		with: anAttributeType
		with: aCharacter