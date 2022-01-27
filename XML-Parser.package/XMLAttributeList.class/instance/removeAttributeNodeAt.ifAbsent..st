removing
removeAttributeNodeAt: aName ifAbsent: aBlock
	^ self remove:
		(self
			attributeNodeAt: aName
			ifAbsent: [^ aBlock value]).