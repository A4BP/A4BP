private
connectTerminalStatesToState: aState
	terminalStateOrStates isCollection
		ifTrue: [
			"use #to:do: for speed"
			1 to: terminalStateOrStates size do: [:i |
				(terminalStateOrStates at: i) connectToState: aState]]
		ifFalse: [terminalStateOrStates connectToState: aState]