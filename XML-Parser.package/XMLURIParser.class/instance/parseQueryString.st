parsing
parseQueryString
	^ self
		parseUpToAnyNotSkipping: '#'
		afterNext: $?