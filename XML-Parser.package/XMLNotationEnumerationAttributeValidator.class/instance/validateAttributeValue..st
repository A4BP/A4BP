validating
validateAttributeValue: aValue
	super validateAttributeValue: aValue.
	self unparsedEntityValidator
		validateNotationReference: aValue
		inAttribute: self attribute.