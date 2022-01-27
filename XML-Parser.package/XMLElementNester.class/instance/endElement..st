checking
endElement: anElementName
	self openElements removeLast.
	self hasScopedAttributes
		ifTrue: [self endScopedAttributes].