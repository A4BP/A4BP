parsing
parse: aStringOrStream usingNamespaces: aBoolean
	"Parses string or stream possibly with namespace checking (default enabled)"

	^ (self on: aStringOrStream)
		usesNamespaces: aBoolean;
		parseDocument