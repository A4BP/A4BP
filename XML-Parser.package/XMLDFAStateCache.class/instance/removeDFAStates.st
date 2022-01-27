private
removeDFAStates
	cachedDFAStates
		valuesDo: [:each | each removeDFAStateTransitions];
		removeAll;
		at: firstDFAState nfaStates put: firstDFAState