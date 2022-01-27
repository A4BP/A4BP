tokenizing
nextXMLTextDeclaration
	(streamReader nextMatchAll: '<?xml')
		ifTrue: [| encoding |
			self expectSeparators.
			(self nextXMLVersionAttributeRequired: false) isEmpty
				ifFalse: [self expectSeparators].
			(encoding := self nextXMLEncodingAttributeRequired: true) isEmpty
				ifFalse: [self convertFromEncoding: encoding].

			streamReader skipSeparators.
			self
				expectNext: $?;
				expectTerminator].
	context := context previousContext.