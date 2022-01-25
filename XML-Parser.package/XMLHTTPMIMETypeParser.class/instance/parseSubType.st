parsing
parseSubType
	"sub types are case insensitive and are converted to
	lowercase for consistentcy"
	readStream
		skipSeparators;
		peekFor: $/.
	^ self nextToken asLowercase.