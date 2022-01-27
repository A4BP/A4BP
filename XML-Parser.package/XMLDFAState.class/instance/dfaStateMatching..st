accessing
dfaStateMatching: aMatcher
	| matchingNFAStates |

	matchingNFAStates := XMLNFAStateSet new.
	nfaStates do: [:state |
		(state matches: aMatcher)
			ifTrue: [state nextState addTo: matchingNFAStates]].
	matchingNFAStates isEmpty
		ifTrue: [^ nil]
		ifFalse: [^ dfaStateCache cachedDFAStateFor: matchingNFAStates].