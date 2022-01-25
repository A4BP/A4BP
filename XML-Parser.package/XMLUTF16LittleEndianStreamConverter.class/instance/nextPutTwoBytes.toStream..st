basic
nextPutTwoBytes: anInteger toStream: aStream
	aStream
		nextPut: (anInteger bitAnd: 16rFF);
		nextPut: ((anInteger bitShift: -8) bitAnd: 16rFF)