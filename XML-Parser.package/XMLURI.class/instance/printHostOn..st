printing
printHostOn: aStream
	self hasHost
		ifTrue: [aStream nextPutAll: host]