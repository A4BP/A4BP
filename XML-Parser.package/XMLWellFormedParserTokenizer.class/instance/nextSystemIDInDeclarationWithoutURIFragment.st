tokenizing - dtd
nextSystemIDInDeclarationWithoutURIFragment
	^ self
		expectNextAll: 'SYSTEM';
		nextSeparatorsInDeclaration;
		nextSystemIDLiteralWithoutURIFragment