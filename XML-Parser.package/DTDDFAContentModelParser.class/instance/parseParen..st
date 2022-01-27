private
parseParen: aCharacter
	aCharacter == $)
		ifTrue: [self popParenthesizedOperators]
		ifFalse: [operatorStack addLast: $(].