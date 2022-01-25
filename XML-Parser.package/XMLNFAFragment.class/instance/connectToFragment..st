connecting
connectToFragment: aFragment
	self connectTerminalStatesToState: aFragment firstState.
	terminalStateOrStates := aFragment terminalStateOrStates.