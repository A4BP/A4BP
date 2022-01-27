accessing
attributeValueAt: aName put: aValue
	(self includesAttribute: aName)
		ifTrue: [(self attributeNodeAt: aName) value: aValue]
		ifFalse: [self addName: aName value: aValue].
	^ aValue.