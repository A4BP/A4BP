parsing
parseMainType
	"main types are case insensitive and are converted to
	lowercase for consistentcy"
	^ self nextToken asLowercase