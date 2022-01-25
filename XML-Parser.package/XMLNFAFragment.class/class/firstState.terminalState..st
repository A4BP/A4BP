instance creation
firstState: aFirstState terminalState: aTerminalState
	^ self new
		setFirstState: aFirstState
		terminalStateOrStates: aTerminalState