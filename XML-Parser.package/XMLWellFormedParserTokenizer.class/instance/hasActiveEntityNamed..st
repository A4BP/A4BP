testing
hasActiveEntityNamed: aName
	^ self activeEntities anySatisfy: [:each | each name = aName]