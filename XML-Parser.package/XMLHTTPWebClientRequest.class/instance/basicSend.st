basic
basicSend
	^ self responseClass
		request: self
		webClientResponse:
			(self webClientClient
				"#sendRequest: unfortunately requires #initializeFromUrl:
				to be sent first"
				initializeFromUrl: self url;
				sendRequest: self webClientRequest)