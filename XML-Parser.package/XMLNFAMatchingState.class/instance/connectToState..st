connecting
connectToState: aState
	nextState
		ifNil: [nextState := aState]