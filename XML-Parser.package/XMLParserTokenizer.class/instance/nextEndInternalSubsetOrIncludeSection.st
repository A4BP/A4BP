tokenizing - dtd
nextEndInternalSubsetOrIncludeSection
	context isInternalSubsetContext
		ifTrue: [self nextEndInternalSubset]
		ifFalse: [self nextEndIncludeSection]