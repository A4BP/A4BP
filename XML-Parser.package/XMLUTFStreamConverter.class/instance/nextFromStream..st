decoding
nextFromStream: aStream
	| codePoint |

	codePoint := self nextCodePointFromStream: aStream.
	[codePoint == 16rFEFF] "the BOM code point"
		whileTrue: [
			aStream atEnd
				ifTrue: [^ nil].
			codePoint := self nextCodePointFromStream: aStream].
	^ codePoint
		ifNotNil: [codePoint asCharacter].