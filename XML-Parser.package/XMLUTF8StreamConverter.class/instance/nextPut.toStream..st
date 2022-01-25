encoding
nextPut: aCharacter toStream: aStream
	| codePoint |

	(codePoint := aCharacter asInteger) < 16r80
		ifTrue: [
			aStream nextPut: codePoint.
			^ self].

	codePoint < 16r800
		ifTrue: [
			aStream
				nextPut: 16rC0 + (codePoint bitShift: -6);
				nextPut: 16r80 + (codePoint bitAnd: 16r003F).
			^ self].

	codePoint < 16r10000
		ifTrue: [
			"check for the reserved surrogate pair code points"
			(codePoint >= 16rD800
				and: [codePoint <= 16rDFFF])
				ifTrue: [self errorBadCharacterValue: codePoint].
			aStream
				nextPut: 16rE0 + (codePoint bitShift: -12);
				nextPut: 16r80 + ((codePoint bitShift: -6) bitAnd: 16r3F);
				nextPut: 16r80 + (codePoint bitAnd: 16r3F).
			^ self].

	codePoint <= 16r10FFFF  "max code point"
		ifTrue: [
			aStream
				nextPut: 16rF0 + (codePoint bitShift: -18);
				nextPut: 16r80 + ((codePoint bitShift: -12) bitAnd: 16r3F);
				nextPut: 16r80 + ((codePoint bitShift: -6) bitAnd: 16r3F);
				nextPut: 16r80 + (codePoint bitAnd: 16r3F).
			^ self].

	self errorBadCharacterValue: codePoint.