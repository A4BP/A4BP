validating
validateStartTag: aName
	currentState :=
		currentState
			detectNextStateMatching: aName
			ifNone: [self errorUnexpectedElement: aName]