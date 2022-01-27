testing
isWhitespace
	^ self isEmpty not
		and: [self string allSatisfy: [:each | each xmlParserIsWhitespace]]