private
parserForSpecialCharacter: aCharacter
	| asciiValue |

	((asciiValue := aCharacter asciiValue) > 0
		and: [asciiValue <= SpecialCharacterParsers size])
			ifTrue: [^ SpecialCharacterParsers at: asciiValue]
			ifFalse: [^ nil]