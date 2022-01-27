parsing
parseURL: aURLString upToLimit: aLimit
	"Fetches URL upto specified input limit (nil to disable) and parses response"

	^ (self
		onURL: aURLString
		upToLimit: aLimit) parseDocument