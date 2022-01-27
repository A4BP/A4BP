private
getResponseUpToLimit: aMaxSize withTimeout: aTimeout onError: aBlock
	^ self
		setZincMaxEntitySize: aMaxSize
		during: [
			((Smalltalk at: #ZnClient) new
				timeout: aTimeout;
				url: url;
				get) readStream]
		onError: aBlock