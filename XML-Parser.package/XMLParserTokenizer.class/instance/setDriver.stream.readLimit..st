initialization
setDriver: aDriver stream: aStream readLimit: aReadLimit
	driver := aDriver.
	streamReader :=
		(XMLNestedStreamReader
			on: aStream
			readLimit: aReadLimit).
	writeStream := (String new: 128) writeStream.
	nameStream := (String new: 16) writeStream.
	context := XMLUnitializedContext new.