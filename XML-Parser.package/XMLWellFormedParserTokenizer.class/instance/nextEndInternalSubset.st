tokenizing - dtd
nextEndInternalSubset
	self hasActiveEntities
		ifTrue: [self errorParameterEntityTerminatingSubset].

	super nextEndInternalSubset.