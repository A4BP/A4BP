entity replacing
addActiveEntity: anEntity
	(self hasActiveEntityNamed: anEntity name)
		ifTrue: [self errorSelfReferentialEntity: anEntity].
	self maxEntityReplacementDepth
		ifNotNil: [:maxDepth |
			(self activeEntities size + 1> maxDepth)
				ifTrue: [self errorEntityDepthLimitExceeded]].
	
	self activeEntities addLast: anEntity.
	anEntity isExternal
		ifTrue: [driver currentURI: anEntity uri].