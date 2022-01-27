testing
hasActiveExternalEntity
	^ self activeEntities anySatisfy: [:each | each isExternal]