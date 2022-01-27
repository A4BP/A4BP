validating
validateStartTag: aName
	(self allowedElements includes: aName)
		ifFalse: [self errorUnexpectedElement: aName]
	