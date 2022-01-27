parsing
parse: aStringOrStream
	"Parse document in argument string or stream"

	^ (self on: aStringOrStream) parseDocument