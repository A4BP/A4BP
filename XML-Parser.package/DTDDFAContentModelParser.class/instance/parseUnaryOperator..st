private
parseUnaryOperator: aCharacter
	nfaBuilder hasFragments
		ifFalse: [self errorMissingOperand].

	self applyOperator: aCharacter.