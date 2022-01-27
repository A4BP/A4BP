printing
printPortOn: aStream
	self hasPort
		ifTrue: [
			aStream
				nextPut: $:;
				nextPutAll: port asString]