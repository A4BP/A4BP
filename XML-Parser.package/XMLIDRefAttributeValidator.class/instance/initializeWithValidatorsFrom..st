initialization
initializeWithValidatorsFrom: aValidatorContainer
	elementIdValidator := aValidatorContainer elementIDValidator.
	self validateReservedAttributeValidator.