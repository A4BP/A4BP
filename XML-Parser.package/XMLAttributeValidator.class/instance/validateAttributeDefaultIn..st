validating
validateAttributeDefaultIn: anAttributeDictionary
	defaultValueValidator validateAttributeDefaultIn: anAttributeDictionary.

	self shouldFurtherNormalizeAttributeValue
		ifTrue: [self furtherNormalizeAttributeValueIn: anAttributeDictionary].