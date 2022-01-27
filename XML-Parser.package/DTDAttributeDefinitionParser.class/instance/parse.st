parsing
parse
	| attributeValidator |

	attributeValidator :=
		self validatorClassForType
			element: element
			attribute: attribute
			defaultValueValidator: defaultValueValidator.
	attributeValidator isEnumerationValidator
		ifTrue: [attributeValidator setAllowedValuesFromString: type].

	^ attributeValidator.