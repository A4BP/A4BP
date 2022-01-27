entity replacing
constructReplacementForParameterEntity: anEntity
	context isLiteralValueContext
		ifTrue: [^ self constructReplacementForLiteralContextEntity: anEntity].

	streamReader pushBackCharacter: NormalizedSpace.
	self
		pushBackEntity: anEntity
		onClose: nil.
	streamReader pushBackCharacter: NormalizedSpace.