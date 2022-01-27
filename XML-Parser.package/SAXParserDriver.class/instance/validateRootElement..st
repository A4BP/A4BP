private
validateRootElement: aStartTag
	(self saxHandler requiresDocumentConstraints
		and: [self validator hasElementValidators not])
		ifTrue: [self errorDocumentConstraintsRequired].

	self validator validateRootElement: aStartTag.