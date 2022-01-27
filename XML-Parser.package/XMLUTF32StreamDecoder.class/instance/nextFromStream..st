decoding
nextFromStream: aStream
	^ self
		codePointFromFirstByte:
			(aStream basicNext ifNil: [^ nil]) asciiValue
		secondByte:
			(aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue
		thirdByte:
			(aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue
		fourthByte: 
			(aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue