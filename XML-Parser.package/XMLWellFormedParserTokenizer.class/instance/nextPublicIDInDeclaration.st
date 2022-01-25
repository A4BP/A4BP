tokenizing - dtd
nextPublicIDInDeclaration
	^ self
		expectNextAll: 'PUBLIC';
		nextSeparatorsInDeclaration;
		nextPublicIDLiteral