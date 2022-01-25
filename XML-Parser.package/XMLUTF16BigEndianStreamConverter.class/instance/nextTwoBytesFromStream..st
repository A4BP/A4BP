basic
nextTwoBytesFromStream: aStream
	| firstByte |

	firstByte := aStream next asInteger bitShift: 8.

	aStream atEnd
		ifTrue: [self errorBadCharacterEncoding].
	^ firstByte + aStream next asInteger.