private
terminalStatesAddedTo: aTerminalStateCollection
	terminalStateOrStates isCollection
		ifTrue: [
			"#to:do: for speed"
			1 to: terminalStateOrStates size do: [:i |
				aTerminalStateCollection addLast: (terminalStateOrStates at: i)]]
		ifFalse: [aTerminalStateCollection addLast: terminalStateOrStates].
	^ aTerminalStateCollection.