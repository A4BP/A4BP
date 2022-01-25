parsing
parseDocumentWhile: aBlock
	"Parse the input string or stream only as long as aBlock evalautes as true
	and return the result"

	self parser parseDocumentWhile: aBlock.

	^ self parsingResult.