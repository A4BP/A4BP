instance creation
onURL: aURLString upToLimit: aLimit
	"Fetches URL and returns new parser on the response up to
	the input limit (use nil to disable) but doesn't parse"

	^ (self
		on: (aURLString asXMLURI getUpToLimit: aLimit)
		documentURI: aURLString)
			documentReadLimit: aLimit