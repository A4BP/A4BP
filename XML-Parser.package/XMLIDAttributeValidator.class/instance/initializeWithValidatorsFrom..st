initialization
initializeWithValidatorsFrom: aValidatorContainer
	(elementIdValidator := aValidatorContainer elementIDValidator)
		validateIDAttribute: self attribute
		forElement: self element.
	self validateReservedAttributeValidator.