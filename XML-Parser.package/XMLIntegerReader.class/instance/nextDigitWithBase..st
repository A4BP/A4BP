private
nextDigitWithBase: aBase
	| digit |
	
	digit :=
		CharacterDigitValues
			at: self peek asciiValue
			ifAbsent: [^ nil].
	(digit >= 0 and: [digit < aBase])
		ifFalse: [^ nil].
	self next.
	^ digit.