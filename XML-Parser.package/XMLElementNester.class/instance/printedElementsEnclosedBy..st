printing
printedElementsEnclosedBy: anElement
	^ String streamContents: [:stream |
		self
			printElementsFrom: (self openElements lastIndexOf: anElement) + 1
			on: stream]