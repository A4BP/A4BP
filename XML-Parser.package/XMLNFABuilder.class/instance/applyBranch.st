applying
applyBranch
	| leftFragment rightFragment branchState |

	leftFragment := self popFragment.
	rightFragment := self popFragment.
	branchState :=
		XMLNFABranchingState
			leftBranch: leftFragment firstState
			rightBranch: rightFragment firstState.

	self pushFragment:
		(XMLNFAFragment
			firstState: branchState
			terminalStates:
				(leftFragment terminalStatesWithAllFrom: rightFragment)).