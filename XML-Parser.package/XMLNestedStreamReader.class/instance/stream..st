accessing
stream: aStream
	stream := 
		(aStream atEnd
			or: [aStream peek isCharacter])
			ifTrue: [aStream]
			ifFalse: [XMLBinaryReadStreamAdapter on: aStream]