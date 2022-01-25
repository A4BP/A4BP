dsl
flowElements
	^ self flowAllElements select:[:n | n isSequence not].