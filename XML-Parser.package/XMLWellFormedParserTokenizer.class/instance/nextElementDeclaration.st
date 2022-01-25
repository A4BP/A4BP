tokenizing - dtd
nextElementDeclaration
	self
		expectNextAll: 'ELEMENT'
		startingAt: 2. "the 'E' was already read"

	self nextSeparatorsInDeclaration.
	driver
		handleElementDeclaration: self nextElementName
		contentModel: self nextContentModel.
	self
		skipSeparatorsInDeclaration;
		nextDeclarationTerminator.