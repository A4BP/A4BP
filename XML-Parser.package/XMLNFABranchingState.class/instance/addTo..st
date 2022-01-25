adding
addTo: aStateSet
	lastAddedTo == aStateSet
		ifFalse: [
			"to detect and handle cycles"
			lastAddedTo := aStateSet.

			"this is effectively a non-matching, non-accepting state
			with epsilon transitions, so it can be skipped and its
			branches can be followed (in other words, the epsilon
			closure of this state, minus this state)"
			leftBranch
				ifNotNil: [leftBranch addTo: aStateSet].
			rightBranch
				ifNotNil: [rightBranch addTo: aStateSet]]