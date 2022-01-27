printing
printElementsFrom: aStart on: aStream
	self
		printElementsFrom: aStart
		to: aStart + self elementPrintLimit - 1
		on: aStream