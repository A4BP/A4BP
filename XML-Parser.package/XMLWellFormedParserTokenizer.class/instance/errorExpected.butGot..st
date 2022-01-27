errors
errorExpected: aString butGot: aCharacter
	self errorExpected:
		('{1} but got "{2}"' format:
			(Array
				with: aString
				with: (aCharacter ifNil: [''])))