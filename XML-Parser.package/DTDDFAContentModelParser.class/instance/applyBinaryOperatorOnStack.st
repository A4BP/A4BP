evaluation
applyBinaryOperatorOnStack
	nfaBuilder totalFragments > 1
		ifFalse: [self errorMissingOperand].

	self applyOperator: operatorStack removeLast.