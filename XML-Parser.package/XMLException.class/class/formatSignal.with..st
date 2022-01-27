signalling
formatSignal: aString with: aFirstValue
	^ self
		formatSignal: aString
		withAll: (Array with: aFirstValue)