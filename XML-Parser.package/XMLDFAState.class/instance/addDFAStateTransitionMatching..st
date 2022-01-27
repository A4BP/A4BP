private
addDFAStateTransitionMatching: aMatcher
	self dfaStateTransitions size >= self maxDFAStateTransitions
		ifTrue: [self removeDFAStateTransitions].
	^ self dfaStateTransitions
		at: aMatcher
		put: (self dfaStateMatching: aMatcher).