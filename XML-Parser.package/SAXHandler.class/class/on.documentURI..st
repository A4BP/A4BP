instance creation
on: aStringOrStream documentURI: aURIString
	"Returns new parser with associated base URI but doesn't parse"

	^ (self on: aStringOrStream) documentURI: aURIString