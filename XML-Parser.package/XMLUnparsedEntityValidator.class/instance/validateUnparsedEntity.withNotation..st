validating
validateUnparsedEntity: anEntity withNotation: aNotation
	(self notations includes: aNotation)
		ifFalse: [
			self
				errorUndeclaredNotation: aNotation
				inEntity: anEntity]