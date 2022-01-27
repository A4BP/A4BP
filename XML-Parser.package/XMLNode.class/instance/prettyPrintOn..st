printing
prettyPrintOn: aStream
 	"Prints XML with whitespace formatting for readability"
	self
		printOn: aStream
		beforeWritingDo: [:writer | writer enablePrettyPrinting]