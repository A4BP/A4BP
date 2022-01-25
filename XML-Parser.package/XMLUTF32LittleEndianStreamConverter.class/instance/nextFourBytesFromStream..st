basic
nextFourBytesFromStream: aStream
	| firstByte secondByte thirdByte |

	firstByte := aStream next asInteger.

	aStream atEnd
		ifTrue: [self errorBadCharacterEncoding].
	secondByte := aStream next asInteger bitShift: 8.

	aStream atEnd
		ifTrue: [self errorBadCharacterEncoding].
	thirdByte := aStream next asInteger bitShift: 16.

	aStream atEnd
		ifTrue: [self errorBadCharacterEncoding].
	^ firstByte + secondByte + thirdByte + (aStream next asInteger bitShift: 24).