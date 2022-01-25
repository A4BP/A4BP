private
errorUnrecognizedContentTypeCharset: aCharset
	XMLEncodingException
		formatSignal:
			'Unrecognized Content-Type charset "{1}" encoding for HTTP content'
		with: aCharset