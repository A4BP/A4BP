accessing
contentEncoding: aStringOrCollection
	self
		encodingNamesFromHeaderValuesAt: 'Content-Encoding'
		put: aStringOrCollection