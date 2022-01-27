private
addDFAState: aDFAState
	cachedDFAStates size >= self maxCachedDFAStates
		ifTrue: [self removeDFAStates].
	^ cachedDFAStates
		at: aDFAState nfaStates
		put: aDFAState.