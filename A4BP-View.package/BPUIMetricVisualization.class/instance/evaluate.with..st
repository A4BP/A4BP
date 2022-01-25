glamour-builder-display
evaluate: element with: method
	|value methodName|
	methodName := method messageType.
	value := [element perform: methodName] on:Error do:[0].
	value = 0 ifTrue:[value := 1].
	^ value