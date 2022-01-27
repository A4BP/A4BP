accessing
maxSize: anInteger
	anInteger < maxSize
		ifTrue: [self clear].

	maxSize := anInteger.