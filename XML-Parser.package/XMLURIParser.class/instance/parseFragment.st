parsing
parseFragment
	(readStream peekFor: $#)
		ifTrue: [^ readStream upToEnd]
		ifFalse: [^ '']