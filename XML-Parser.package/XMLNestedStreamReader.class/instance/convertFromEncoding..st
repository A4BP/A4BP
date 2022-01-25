decoding
convertFromEncoding: anEncodingName
	"Encoding attributes are ignored unless the stream is a converting adapter
	that has a null/implicit converter.
	
	This is the safest approach, because the encoding of a file can be easily
	changed by a text editor or utility without automatically updating the
	<?xml ...?> encoding attribute.
	
	The BOM and out-of-band info (like HTTP headers) should be given precedence."

	(stream isXMLConvertingStreamAdapter
		and: [stream hasNullStreamConverter
			or: [stream hasImplicitStreamConverter]])
		ifTrue: [| streamConverter |
			(streamConverter := anEncodingName asXMLStreamConverter) isNull
				ifTrue: [self errorUnsupportedEncoding: anEncodingName].
			self decodeStreamWithConverter: streamConverter]