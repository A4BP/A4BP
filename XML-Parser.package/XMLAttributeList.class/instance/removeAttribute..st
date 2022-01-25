removing
removeAttribute: aName
	^ (self removeAt: (self indexOfAttributeValueAt: aName)) value