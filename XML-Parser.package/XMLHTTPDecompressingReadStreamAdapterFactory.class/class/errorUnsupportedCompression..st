private 
errorUnsupportedCompression: aCompressionScheme
	XMLHTTPException
		formatSignal: 'Unsupported compression scheme "{1}" for HTTP content'
		with: aCompressionScheme