accessing
nextInteger
	^ XMLIntegerReader
		readFrom: self
		withBase: 16
		startingWithAny: 'x'
		orBase: 10