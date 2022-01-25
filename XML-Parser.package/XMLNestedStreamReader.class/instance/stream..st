accessing
stream: aStream
	"if the stream is not already a decoding adapter,
	then only assume it needs one if it's binary"
	stream := 
		aStream isXMLConvertingStreamAdapter
			ifTrue: [aStream]
			ifFalse: [
				(XMLDecodingReadStreamAdapter nonDecodingOnIfBinaryOrExternal: aStream)
					ifNil: [aStream]]