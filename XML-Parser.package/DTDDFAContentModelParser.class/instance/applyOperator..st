evaluation
applyOperator: aCharacter
	nfaBuilder perform: (OperatorApplicators at: aCharacter asciiValue)