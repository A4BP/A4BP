accessing
setAllowedValuesFromString: aString
	allowedValues := (self enumerationListParserClass on: aString) parse