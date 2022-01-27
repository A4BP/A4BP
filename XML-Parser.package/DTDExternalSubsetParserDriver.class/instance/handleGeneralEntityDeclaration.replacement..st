handling - dtd
handleGeneralEntityDeclaration: aName replacement: aReplacement
	self doctypeDefinition
		addGeneralEntity: aName
		replacement: aReplacement
		from: self currentURI