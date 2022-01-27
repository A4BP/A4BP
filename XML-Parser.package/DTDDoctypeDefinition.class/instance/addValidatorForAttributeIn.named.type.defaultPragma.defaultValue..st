adding
addValidatorForAttributeIn: anElement named: aName type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	| attributeValidatorsForElement |

	attributeValidatorsForElement :=
		self attributeValidators
			at: anElement
			ifAbsentPut: [Dictionary new].
	(attributeValidatorsForElement includesKey: aName)
		ifTrue: [^ self].

	attributeValidatorsForElement
		at: aName
		put: 
			((DTDAttributeDefinitionParser
				element:  anElement
				attribute: aName
				type: aType
				defaultPragma: aDefaultPragma
				defaultValue: aDefaultValue) parse
					initializeWithValidatorsFrom: self).