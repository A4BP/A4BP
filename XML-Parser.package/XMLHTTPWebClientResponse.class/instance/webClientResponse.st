private
webClientResponse
	^ webClientResponse
		ifNil: [
			webClientResponse :=
				(XMLClassFinder classNamed: #WebResponse)
					protocol: self defaultProtocol
					code: self defaultStatusCode]