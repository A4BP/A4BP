validating
validateIDReference: anID inAttribute: anAttribute
	(XMLWellFormedParserTokenizer isName: anID)
		ifFalse: [
			self
				errorInvalidID: anID
				inAttribute: anAttribute].
	self idReferences add: anID.