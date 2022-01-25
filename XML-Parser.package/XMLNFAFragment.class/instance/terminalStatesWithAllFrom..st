converting
terminalStatesWithAllFrom: aFragment
	terminalStateOrStates isCollection
		ifTrue: [^ aFragment terminalStatesAddedTo: terminalStateOrStates].
	aFragment terminalStateOrStates isCollection
		ifTrue: [^ self terminalStatesAddedTo: aFragment terminalStateOrStates].
	^ self
		newTerminalStatesWith: terminalStateOrStates
		and: aFragment terminalStateOrStates.