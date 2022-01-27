accessing
doctypeDeclaration: aDoctypeDeclaration
	aDoctypeDeclaration
		ifNotNil: [
			aDoctypeDeclaration hasParent
				ifTrue: [self errorAddingDoctypeDeclarationWithParent].
			aDoctypeDeclaration parent: self].
	doctypeDeclaration
		ifNotNil: [doctypeDeclaration parent: nil].

	doctypeDeclaration := aDoctypeDeclaration.