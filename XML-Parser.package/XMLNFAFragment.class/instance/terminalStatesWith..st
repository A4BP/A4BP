converting
terminalStatesWith: aTerminalState
	terminalStateOrStates isCollection
		ifTrue: [
			terminalStateOrStates addLast: aTerminalState.
			^ terminalStateOrStates]
		ifFalse: [
			^ self
				newTerminalStatesWith: terminalStateOrStates
				and: aTerminalState]