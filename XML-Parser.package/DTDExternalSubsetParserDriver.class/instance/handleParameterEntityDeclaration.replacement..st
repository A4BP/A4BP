handling - dtd
handleParameterEntityDeclaration: aName replacement: aReplacement
	self doctypeDefinition
		addParameterEntity: aName
		replacement:aReplacement
		from: self currentURI