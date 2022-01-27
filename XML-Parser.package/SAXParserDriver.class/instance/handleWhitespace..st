handling
handleWhitespace: aString
	(self elementNester hasScopedAttributes
		and: [(self elementNester scopedAttributeAt: 'xml:space') = 'preserve'])
		ifTrue: [self handlePCData: aString]
		ifFalse: [self saxHandler ignorableWhitespace: aString]