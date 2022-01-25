private
webClientClient
	^ webClientClient
		ifNil: [
			webClientClient := (XMLClassFinder classNamed: #WebClient) new]