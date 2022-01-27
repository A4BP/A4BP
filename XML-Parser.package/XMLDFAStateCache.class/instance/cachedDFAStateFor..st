accessing
cachedDFAStateFor: anNFAStateSet
	^ cachedDFAStates
		at: anNFAStateSet
		ifAbsent: [self addDFAState: (anNFAStateSet asDFAStateWithStateCache: self)]