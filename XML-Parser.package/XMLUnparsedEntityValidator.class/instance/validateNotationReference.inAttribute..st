validating
validateNotationReference: aNotation inAttribute: anAttribute
	(self notations includes: aNotation)
		ifFalse: [
			self
				errorUndeclaredNotation: aNotation
				inAttribute: anAttribute]