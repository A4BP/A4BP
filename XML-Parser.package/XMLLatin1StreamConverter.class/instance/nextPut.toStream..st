encoding
nextPut: aCharacter toStream: aStream
	| codePoint |

	(codePoint := aCharacter asInteger) > 255
		ifTrue: [self errorBadCharacterValue: codePoint].

	aStream nextPut: codePoint.