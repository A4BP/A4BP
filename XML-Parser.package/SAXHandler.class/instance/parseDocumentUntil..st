parsing
parseDocumentUntil: aBlock
	"Parse the input string or stream only until aBlock evalautes as true
	and return the result"

	self parser parseDocumentUntil: aBlock.

	^ self parsingResult.