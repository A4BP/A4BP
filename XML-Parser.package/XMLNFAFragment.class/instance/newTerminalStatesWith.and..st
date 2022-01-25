private
newTerminalStatesWith: aFirstTerminalState and: aSecondTerminalState
	"avoid #with:with: to control the capacity"
	^ (OrderedCollection new: 4)
		addLast: aFirstTerminalState;
		addLast: aSecondTerminalState;
		yourself