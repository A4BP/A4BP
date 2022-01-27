parsing
innerXML: aStringOrStream
	self innerXMLParsedWith: (self parserHandlerClass on: aStringOrStream)