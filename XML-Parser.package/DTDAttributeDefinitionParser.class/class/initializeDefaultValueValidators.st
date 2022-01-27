class initialization
initializeDefaultValueValidators
	(DefaultValueValidators := Dictionary new)
		at: 'FIXED' put: XMLFixedValueAttributeValidator;
		at: 'IMPLIED' put: XMLImpliedValueAttributeValidator;
		at: 'REQUIRED' put: XMLRequiredValueAttributeValidator