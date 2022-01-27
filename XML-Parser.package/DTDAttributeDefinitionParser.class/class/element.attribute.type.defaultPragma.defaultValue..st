instance creation
element: anElement attribute: anAttribute type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	^ self new
		setElement: anElement
		attribute: anAttribute
		type: aType
		defaultValueValidator:
			((DefaultValueValidators
				at: aDefaultPragma
				ifAbsent: [XMLDefaultValueAttributeValidator])
					attribute: anAttribute
					defaultValue: aDefaultValue).