validating
validateStartTag: aName attributes: anAttributeDictionary
	(self hasElementValidators or: [self hasAttributeValidators])
		ifFalse: [^ self].

	self validateStartTag: aName.
	self
		validateAttributes: anAttributeDictionary
		with: (self attributeValidatorsFor: aName).