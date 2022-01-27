initialization
initialize
	super initialize.

	documentReadLimit := self class defaultDocumentReadLimit.
	maxEntityReplacementDepth := 10.