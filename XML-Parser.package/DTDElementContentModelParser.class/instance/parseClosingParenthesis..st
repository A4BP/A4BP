private
parseClosingParenthesis: aCharacter
	self popRemainingBinaryOperators.
	(binaryOperatorStack size > 0
		and: [binaryOperatorStack last == $(])
		ifTrue: [binaryOperatorStack removeLast].