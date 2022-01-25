private
errorBadResponse: aResponse
	XMLHTTPException
		formatSignal: '{1} ({2})'
		with: aResponse statusDescription
		with: aResponse statusCode