applying
applyPlus
	| plusFragment |

	plusFragment := self topFragment.
	plusFragment connectToState:
		(XMLNFABranchingState branch: plusFragment firstState).