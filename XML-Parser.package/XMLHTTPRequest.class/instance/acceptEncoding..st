accessing
acceptEncoding: aStringOrCollection
	"NOTE: only gzip is currently supported"
	self
		encodingNamesFromHeaderValuesAt: 'Accept-Encoding'
		put: aStringOrCollection