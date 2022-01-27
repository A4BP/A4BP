accessing
lineNumber: aLineNumber
	lineNumber := aLineNumber.
	self
		append: aLineNumber
		withDescription: 'line'.