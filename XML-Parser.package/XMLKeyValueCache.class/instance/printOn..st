printing
printOn: aStream
	| loadFactor |

	super printOn: aStream.

	loadFactor := self loadFactor.
	aStream
		nextPut: $(;
		print: loadFactor numerator;
		nextPut: $/;
		print: loadFactor denominator;
		nextPut: $).