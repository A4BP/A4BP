private
surrogatePairFromStream: aStream withHighSurrogate: aHighSurrogate
	| lowSurrogate |

	lowSurrogate :=
		self
			codePointFromFirstByte:
				(aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue
			secondByte:
				(aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue.

	^ self characterWithValue:
		((aHighSurrogate bitAnd: 16r3FF) bitShift: 10) +
		(lowSurrogate bitAnd: 16r3FF) +
		16r10000.