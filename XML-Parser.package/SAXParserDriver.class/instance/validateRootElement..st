private
validateRootElement: anElement
	self saxHandler requiresSchema
		ifTrue: [
			(self validator hasElementValidators
				or: [self validator hasAttributeValidators])
				ifFalse: [self errorDocumentConstraintsRequired]].

	self validator validateRootElement: anElement.