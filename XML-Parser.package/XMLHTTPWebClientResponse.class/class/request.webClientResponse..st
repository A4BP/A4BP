instance creation
request: aRequest webClientResponse: aWebClientResponse
	^ (self request: aRequest)
		setWebClientResponse: aWebClientResponse