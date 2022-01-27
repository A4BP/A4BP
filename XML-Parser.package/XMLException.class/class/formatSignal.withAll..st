signalling
formatSignal: aString withAll: anArray
	^ self signal: (aString format: anArray)