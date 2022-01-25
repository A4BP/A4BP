accessing
terminalStates
	^ terminalStateOrStates isCollection
		ifTrue: [terminalStateOrStates]
		ifFalse: [OrderedCollection with: terminalStateOrStates]