tokenizing - dtd
nextSystemID
	^ self
		expectNextAll: 'SYSTEM';
		nextSeparators;
		nextSystemIDLiteral