validating
validateID: anID inAttribute: anAttribute
	(XMLWellFormedParserTokenizer isName: anID)
		ifFalse: [
			self
				errorInvalidID: anID
				inAttribute: anAttribute].
	self
		validateUniquenessOfID: anID
		inAttribute: anAttribute.