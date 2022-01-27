tokenizing - dtd
nextElementDeclaration
	self
		expectNextAll: 'LEMENT';
		expectSeparatorsInDeclaration.
	driver
		handleElementDeclaration: self nextName
		contentModel: self nextContentModel.
	self
		skipSeparatorsInDeclaration;
		expectTerminator.