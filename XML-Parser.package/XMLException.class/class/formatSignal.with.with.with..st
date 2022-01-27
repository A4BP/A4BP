signalling
formatSignal: aString with: aFirstValue with: aSecondValue with: aThirdValue
	^ self
		formatSignal: aString
		withAll: (Array with: aFirstValue with: aSecondValue with: aThirdValue)