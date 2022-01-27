private
codePointFromFirstByte: aFirstByte secondByte: aSecondByte thirdByte: aThirdByte fourthByte: aFourthByte
	^ self characterWithValue:
		(aFourthByte bitShift: 24) +
		(aThirdByte bitShift: 16) +
		(aSecondByte bitShift: 8) +
		aFirstByte