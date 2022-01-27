handling - dtd
handleElementDeclaration: aName contentModel: aContentModel
	self isValidating
		ifTrue: [
			self doctypeDefinition
				addValidatorForElement: aName
				contentModel: aContentModel]