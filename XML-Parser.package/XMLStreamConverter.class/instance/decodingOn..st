convenience
decodingOn: aReadStream
	^ XMLDecodingReadStreamAdapter
		on: aReadStream
		streamConverter: self