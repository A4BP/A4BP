removing
remove: aState ifAbsent: anExceptionBlock
	set
		remove: aState
		ifAbsent: [^ anExceptionBlock value].

	isAccepting
		ifTrue: [isAccepting := set anySatisfy: [:each | each isAccepting]].

	^ aState.