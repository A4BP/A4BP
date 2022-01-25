parsing
parseDocument
	"Parse the entire input string or stream and return the result"

	self parser parseDocument.

	^ self parsingResult.