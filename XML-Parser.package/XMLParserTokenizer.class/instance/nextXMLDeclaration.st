tokenizing
nextXMLDeclaration
	| version encoding |

	self nextSeparators.
	version := self nextXMLVersionAttributeRequired: true.
	streamReader peek == $?
		ifFalse: [self nextSeparators].
	(encoding := self nextXMLEncodingAttributeRequired: false) isEmpty
		ifFalse: [
			self convertFromEncoding: encoding.
			streamReader peek == $?
				ifFalse: [self nextSeparators]].
	driver
		handleXMLVersion: version
		encoding: encoding
		standalone: self nextXMLStandaloneAttribute.
	streamReader skipSeparators.
	self nextXMLDeclarationTerminator.

	state := state prologState.