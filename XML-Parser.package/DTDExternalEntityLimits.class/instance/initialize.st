initialization
initialize
	super initialize.

	externalSubsetReadLimit := self class defaultExternalSubsetReadLimit.
	maxExternalEntities := 20.
	maxExternalEntitySize := self class defaultMaxExternalEntitySize.
	resolvesLocalFromNonLocal := false.