parsing
parseURL: aURLString
	"Fetches URL and parses response"

	^ (self onURL: aURLString) parseDocument