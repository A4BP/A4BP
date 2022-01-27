signalling
formatSignal: aString with: aFirstValue with: aSecondValue with: aThirdValue with: aFourthValue
	^ self
		formatSignal: aString
		withAll:
			(Array
				with: aFirstValue
				with: aSecondValue
				with: aThirdValue
				with: aFourthValue)