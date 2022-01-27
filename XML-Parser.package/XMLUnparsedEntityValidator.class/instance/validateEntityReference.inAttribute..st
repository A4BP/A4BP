validating
validateEntityReference: aName inAttribute: anAttribute
	(self unparsedEntities includesKey: aName)
		ifFalse: [
			self
				errorUndeclaredUnparsedEntityReference: aName
				inAttribute: anAttribute]