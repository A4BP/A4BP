private
handleParserError: anError
	self tokenizer closeStreams.

	(anError isKindOf: XMLParserException)
		ifTrue: [
			anError hasLineNumber
				ifFalse: [anError lineNumber: self currentLineNumber].
			anError shouldPassOnWhenCaught
				ifTrue: [anError pass]]
		ifFalse: [anError pass].