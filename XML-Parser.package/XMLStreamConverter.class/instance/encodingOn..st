convenience
encodingOn: aWriteStream
	^ (XMLEncodingWriteStreamAdapter
		on: aWriteStream
		streamConverter: self)
			nextPutByteOrderMark;
			yourself