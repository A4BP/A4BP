printing
canonicallyPrintOn: aStream
 	"Prints on aStream as canonical XML"
	self
		printOn: aStream
		beforeWritingDo: [:writer | writer isCanonical: true]