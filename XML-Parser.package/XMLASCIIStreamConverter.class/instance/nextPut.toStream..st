encoding
nextPut: aCharacter toStream: aStream
	| codePoint |

	(codePoint := aCharacter asInteger) > 127
		ifTrue: [self errorBadCharacterValue: codePoint].

	aStream nextPut: codePoint.