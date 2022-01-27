parsing
parse: aStringOrStream documentURI: aURI
	"Parse document in argument string or stream with associated base URI"

	^ (self
		on: aStringOrStream
		documentURI: aURI) parseDocument