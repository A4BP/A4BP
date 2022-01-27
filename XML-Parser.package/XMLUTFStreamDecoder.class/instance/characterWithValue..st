converting
characterWithValue: aCodePoint
	aCodePoint > 16r10FFFF
		ifTrue: [self errorInvalidCodePoint].

	^ Character value: aCodePoint.