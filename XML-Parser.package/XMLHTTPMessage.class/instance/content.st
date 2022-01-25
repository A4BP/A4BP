accessing
content
	"Returns the response content as a String or ByteArray"

	"Requests with content aren't supported yet"
	^ content ifNil: [content := '']