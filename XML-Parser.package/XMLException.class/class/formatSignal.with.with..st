signalling
formatSignal: aString with: aFirstValue with: aSecondValue
	^ self
		formatSignal: aString
		withAll: (Array with: aFirstValue with: aSecondValue)