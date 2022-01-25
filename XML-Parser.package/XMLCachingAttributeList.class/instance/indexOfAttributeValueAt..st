private
indexOfAttributeValueAt: aName
	^ (self attributeNodesByName includesKey: aName)
		ifTrue: [super indexOfAttributeValueAt: aName]
		ifFalse: [0]