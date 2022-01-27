validating
validateXMLID: anID
	(XMLWellFormedParserTokenizer isNCName: anID)
		ifFalse: [
			self
				errorInvalidID: anID
				inAttribute: 'xml:id'].
	self
		validateUniquenessOfID: anID
		inAttribute: 'xml:id'.