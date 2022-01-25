printing
printOn: aStream
	aStream
		nextPutAll: self mainType;
		nextPut: $/;
		nextPutAll: self subType.

	self parameterKeysAndValuesDo: [:key :value |
		aStream
			nextPutAll: '; ';
			nextPutAll: key;
			nextPut: $=;
			nextPutAll: value].