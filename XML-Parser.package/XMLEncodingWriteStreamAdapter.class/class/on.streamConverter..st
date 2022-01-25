instance creation
on: aStream streamConverter: aStreamConverter
	^ (self basicOn:
		(aStream isXMLBinaryOrExternalStream
			ifTrue: [aStream]
			ifFalse: [XMLStringWriteStreamAdapter on: aStream]))
		streamConverter: aStreamConverter