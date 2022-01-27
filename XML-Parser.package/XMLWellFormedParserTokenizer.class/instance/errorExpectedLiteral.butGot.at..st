errors
errorExpectedLiteral: aCharacterOrString butGot: aCharacter at: aPosition
	| literal replacement |

	literal := aCharacterOrString asString.
	replacement := (aCharacter ifNil: ['']) asString.
	self errorExpected:
		('"{1}" but got "{2}"' format:
			(Array
				with: literal
				with:
					(literal
						copyReplaceFrom: aPosition
						to: literal size
						with: replacement)))