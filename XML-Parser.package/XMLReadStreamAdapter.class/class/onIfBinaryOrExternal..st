instance creation
onIfBinaryOrExternal: aStream
	^ aStream isXMLBinaryOrExternalStream
		ifTrue: [self on: aStream]
		ifFalse: [nil]