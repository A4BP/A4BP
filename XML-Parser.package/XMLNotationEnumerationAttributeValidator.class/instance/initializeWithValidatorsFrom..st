initialization
initializeWithValidatorsFrom: aValidatorContainer
	(unparsedEntityValidator := aValidatorContainer unparsedEntityValidator)
		validateNotationAttribute: self attribute
		forElement: self element.
	self validateReservedAttributeValidator.