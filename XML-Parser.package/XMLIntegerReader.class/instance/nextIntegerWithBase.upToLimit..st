reading
nextIntegerWithBase: aBase upToLimit: aReadLimit
	| integer maxValue maxBaseValue digitValue readLimit |

	(aBase > 1
		and: [aBase <= self class maxBase])
		ifFalse: [self errorUnsupportedBase: aBase].

	self class maxIntegerValue
		ifNotNil: [:maxIntegerValue |
			maxValue := maxIntegerValue.
			maxBaseValue := (maxValue / aBase) floor].
	readLimit := aReadLimit.
	[self atEnd
		or: [(readLimit notNil and: [readLimit <= 0])
			or: [(digitValue := self nextDigitWithBase: aBase) isNil]]]
		whileFalse: [
			integer
				ifNil: [integer := 0].
	
			maxBaseValue
				ifNotNil: [
					integer > maxBaseValue
						ifTrue: [
							self overflowed.
							"handle overflow with saturation"
							^ maxValue]].
			integer := integer * aBase.

			maxValue
				ifNotNil: [
					integer > (maxValue - digitValue)
						ifTrue: [
							self overflowed.
							"handle overflow with saturation"
							^ maxValue]].
			integer := integer + digitValue.
			readLimit
				ifNotNil: [readLimit := readLimit - 1]].
	^ integer.