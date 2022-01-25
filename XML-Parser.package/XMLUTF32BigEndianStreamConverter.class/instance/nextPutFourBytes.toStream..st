basic
nextPutFourBytes: anInteger toStream: aStream
	aStream
		nextPut: ((anInteger bitShift: -24) bitAnd: 16rFF);
		nextPut: ((anInteger bitShift: -16) bitAnd: 16rFF);
		nextPut: ((anInteger bitShift: -8) bitAnd: 16rFF);
		nextPut: (anInteger bitAnd: 16rFF)