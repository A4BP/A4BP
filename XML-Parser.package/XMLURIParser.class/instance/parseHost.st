parsing
parseHost
	^ (self parseUpToAnyNotSkipping: ':/?#') asLowercase