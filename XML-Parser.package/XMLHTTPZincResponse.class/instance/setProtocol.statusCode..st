initialization
setProtocol: aString statusCode: anInteger
	self zincResponse statusLine:
		((ZnStatusLine code: anInteger)
			version: aString;
			yourself)