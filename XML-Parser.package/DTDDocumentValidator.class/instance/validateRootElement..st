validating
validateRootElement: anElementName
	(self doctypeDefinition hasRoot
		and: [self doctypeDefinition root ~= anElementName])
		ifTrue: [self errorInvalidRoot: anElementName]