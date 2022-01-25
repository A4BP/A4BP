applying
applyOptional
	| optionalFragment branchingState |

	optionalFragment := self popFragment.
	branchingState :=
		XMLNFABranchingState branch: optionalFragment firstState.

	self pushFragment:
		(XMLNFAFragment
			firstState: branchingState
			terminalStates:
				(optionalFragment terminalStatesWith: branchingState))