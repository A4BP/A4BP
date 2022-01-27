validating
validateWith: aValidator
	self root
		ifNotNil: [:rootElement | aValidator validateRootElement: rootElement name].
	super validateWith: aValidator.
	aValidator validateEndDocument.