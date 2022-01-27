accessing
scopedAttributeAt: aName ifAbsent: aBlock
	^ self currentScopedAttributes
		ifNil: [aBlock value]
		ifNotNil: [:attributes |
			attributes
				at: aName
				ifAbsent: aBlock]