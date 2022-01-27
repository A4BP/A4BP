evaluation
popParenthesizedOperators
	[operatorStack notEmpty]
		whileTrue: [
			operatorStack last == $(
				ifTrue: [
					operatorStack removeLast.
					^ self]
				ifFalse: [self applyBinaryOperatorOnStack]].

	self errorMismatchedParens.