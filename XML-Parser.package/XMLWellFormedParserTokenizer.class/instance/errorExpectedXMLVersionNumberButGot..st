errors
errorExpectedXMLVersionNumberButGot: aString
	self
		errorExpected:
			'<?xml ...?> version number "1.x" (where "x" is one or more digits)'
		butGot: aString