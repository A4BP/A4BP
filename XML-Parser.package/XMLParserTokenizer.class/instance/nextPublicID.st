tokenizing - dtd
nextPublicID
	^ self
		expectNextAll: 'PUBLIC';
		nextSeparators;
		nextPublicIDLiteral