errors
errorExpectedQuote: aQuote ending: aDescription butGot: aCharacter
	self
		formatParseError:
			'Expected end of {1} ({2}) quoted {3} but got "{4}" instead'
		with:
			(aQuote == $'
				ifTrue: ['single']
				ifFalse: ['double'])
		with: aQuote
		with: aDescription
		with: aCharacter