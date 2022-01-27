removing
removeAttribute: aName ifAbsent: aBlock
	^ (self attributeNodes
		removeAttributeNodeAt: aName
		ifAbsent: [^ aBlock value]) value.