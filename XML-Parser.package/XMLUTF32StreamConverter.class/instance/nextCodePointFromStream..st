basic
nextCodePointFromStream: aStream
	| codePoint |

	aStream atEnd
		ifTrue: [^ nil].

	"check for the reserved surrogate pair code points and code points
	greater than the max code point"
	(codePoint := self nextFourBytesFromStream: aStream) >= 16rD800
		ifTrue: [
			(codePoint <= 16rDFFF
				or: [codePoint > 16r10FFFF])
				ifTrue: [self errorBadCharacterValue: codePoint]].

	^ codePoint.