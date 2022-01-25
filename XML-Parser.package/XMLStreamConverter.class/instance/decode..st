convenience
decode: aStringOrByteArray
	^ (XMLDecodingReadStreamAdapter
		on: aStringOrByteArray readStream
		streamConverter: self)
			contents