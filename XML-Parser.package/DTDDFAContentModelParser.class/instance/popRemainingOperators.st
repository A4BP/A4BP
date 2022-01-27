evaluation
popRemainingOperators
	[operatorStack notEmpty]
		whileTrue: [
			operatorStack last == $(
				ifTrue: [self errorMismatchedParens].
			self applyBinaryOperatorOnStack].

	nfaBuilder totalFragments = 1
		ifFalse: [self errorMissingOperand].