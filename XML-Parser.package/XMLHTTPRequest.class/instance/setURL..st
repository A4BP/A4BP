initialization
setURL: aURLString
	url := aURLString.
	self
		timeout: self defaultTimeout;
		method: self defaultMethod;
		"even if #defaultAcceptEncoding returns an empty collection,
		#acceptEncoding: must still be sent here to override any default
		setting of the underlying HTTP library that we don't support"
		acceptEncoding: self defaultAcceptEncoding.