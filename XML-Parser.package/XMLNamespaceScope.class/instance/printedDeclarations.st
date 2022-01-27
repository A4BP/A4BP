printing
printedDeclarations
	^ String streamContents: [:stream | self printDeclarationsOn: stream]