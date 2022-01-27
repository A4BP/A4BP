checking
startElement: anElementName
	self openElements addLast: anElementName.
	self hasScopedAttributes
		ifTrue: [self startScopedAttributes].