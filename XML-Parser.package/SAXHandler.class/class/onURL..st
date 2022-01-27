instance creation
onURL: aURLString
	"Fetches URL and returns new parser on the response but doesn't parse"

	^ self
		onURL: aURLString
		upToLimit: XMLParserLimits defaultDocumentReadLimit