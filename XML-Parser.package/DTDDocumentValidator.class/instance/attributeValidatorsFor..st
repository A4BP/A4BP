accessing
attributeValidatorsFor: anElement
	^ self doctypeDefinition attributeValidators
		at: anElement
		ifAbsent: [nil]