private
webClientRequest
	^ webClientRequest
		ifNil: [
			webClientRequest :=
				(XMLClassFinder classNamed: #WebRequest) new
					initializeFromUrl: self url;
					yourself]