decoding
nextFromStream: aStream
	| firstChar firstByte secondByte thirdByte |

	((firstChar := aStream basicNext) == nil
		or: [(firstByte := firstChar asciiValue) < 16r80]) "single byte character"
		ifTrue: [^ firstChar].

	firstByte < 16rC0 "second bit must be set"
		ifTrue: [self errorInvalidCodePoint].

	secondByte := (aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue.
	(firstByte bitAnd: 16rF0) < 16rE0 "two bytes"
		ifTrue: [
			^ self characterWithValue: 
				((firstByte bitAnd: 16r1F) bitShift: 6) +
				(secondByte bitAnd: 16r3F)].

	thirdByte := (aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue.
	(firstByte bitAnd: 16rF0) = 16rE0 "three bytes"
		ifTrue: [
			^ self characterWithValue: 
				((firstByte bitAnd: 16r0F) bitShift: 12) +
				((secondByte bitAnd: 16r3F) bitShift: 6) +
				(thirdByte bitAnd: 16r3F)].

	^ self characterWithValue: "four"
		((firstByte bitAnd: 16r07) bitShift: 18) +
		((secondByte bitAnd: 16r3F) bitShift: 12) +
		((thirdByte bitAnd: 16r3F) bitShift: 6) +
		((aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue bitAnd: 16r3F).