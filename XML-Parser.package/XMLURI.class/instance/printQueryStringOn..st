printing
printQueryStringOn: aStream
	self hasQueryString
		ifTrue: [
			aStream
				nextPut: $?;
				nextPutAll: queryString]