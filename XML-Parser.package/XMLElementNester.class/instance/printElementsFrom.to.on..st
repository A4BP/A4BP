printing
printElementsFrom: aStart to: aStop on: aStream
	aStart to: aStop do: [:i |
		i > self openElements size
			ifTrue: [^ self].
		i > aStart
			ifTrue: [aStream nextPutAll: ', '].

		aStream
			nextPut: $<;
			nextPutAll: (self openElements at: i);
			nextPut: $>].

	(aStop < self openElements size)
		ifTrue: [aStream nextPutAll: '...'].