decoding
detectEncoding
	stream isXMLConvertingStreamAdapter
		ifTrue: [stream detectEncoding]
		ifFalse: [
			"if it's not already an XMLDecodingReadStreamAdapter, just look
			for an obvious leading byte-order mark and convert it if found,
			and otherwise just leave it alone"
			(XMLEncodingDetector on: stream) streamConverterForEncoding
				ifNotNil: [:converter |
					self decodeStreamWithConverter: converter]]