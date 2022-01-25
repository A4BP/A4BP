tokenizing - dtd
nextSystemIDInDeclaration
	^ self
		expectNextAll: 'SYSTEM';
		nextSeparatorsInDeclaration;
		nextSystemIDLiteral