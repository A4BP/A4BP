printing
printLabelOn: aStream
	aStream
		print: self identityHash;
		nextPut: $(;
		print: matcher;
		nextPut: $)