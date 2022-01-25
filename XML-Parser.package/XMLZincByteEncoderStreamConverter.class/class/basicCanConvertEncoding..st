basic
basicCanConvertEncoding: anEncodingName
	^ XMLClassFinder
		classNamed: #ZnByteEncoder
		ifPresent: [:zincByteEncoderClass |
			zincByteEncoderClass handlesEncoding: anEncodingName]
		ifAbsent: [false]