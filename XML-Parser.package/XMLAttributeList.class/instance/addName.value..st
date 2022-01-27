adding
addName: aName value: aValue
	^ self addLast:
		(self attributeClass
			name: aName
			value: aValue)