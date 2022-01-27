private
parseBinaryOperator: aCharacter
	self hasOperatorOnStack
		ifTrue: [
			(self
				isBinaryOperator: aCharacter
				higherPrecedenceThan: operatorStack last)
					ifFalse: [self applyBinaryOperatorOnStack]].

	operatorStack addLast: aCharacter.