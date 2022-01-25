connecting
connectToState: aState
	self connectTerminalStatesToState: aState.
	terminalStateOrStates := aState.