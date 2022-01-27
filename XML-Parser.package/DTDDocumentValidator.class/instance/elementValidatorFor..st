accessing
elementValidatorFor: aName
	^ (self doctypeDefinition elementValidators
		at: aName
		ifAbsent: [nil]) copy