initialization
setStream: aStream readLimit: aReadLimit
	currentLineNumber := 1.
	normalizedLineEndingChar := LineFeed.
	readLimit := aReadLimit.
	isEscapingQuotes := false.
	self stream: aStream.