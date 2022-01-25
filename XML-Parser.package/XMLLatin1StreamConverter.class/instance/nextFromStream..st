decoding
nextFromStream: aStream
	| byte |

	aStream atEnd
		ifTrue: [^ nil].
	(byte := aStream next asInteger) > 255
		ifTrue: [self errorBadCharacterValue: byte].

	^ byte asCharacter.