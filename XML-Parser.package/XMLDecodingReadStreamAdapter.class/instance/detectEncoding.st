decoding
detectEncoding
	prePeekStreamPosition := nil.
	peekChar := nil.
	stream reset.

	(((self hasNullStreamConverter
		or: [self hasImplicitStreamConverter])
		ifTrue: [XMLImplicitEncodingDetector]
		ifFalse: [XMLEncodingDetector])
			on: stream) streamConverterForEncoding
				ifNotNil: [:converter |
					self streamConverter: converter].