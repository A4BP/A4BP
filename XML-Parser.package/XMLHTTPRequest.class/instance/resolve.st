resolving - response
resolve
	"Sends and retrieves the response as an XMLHTTPResponse object."

	^ self
		resolveUpToLimit: nil
		decoding: true