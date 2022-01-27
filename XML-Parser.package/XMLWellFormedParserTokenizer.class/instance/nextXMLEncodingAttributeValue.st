tokenizing
nextXMLEncodingAttributeValue
	| quote |

	quote := self expectQuote.
	writeStream
		reset;
		nextPut: self expectLetter.
	[EncodingNameChars xmlParserIncludes: streamReader peek]
		whileTrue: [writeStream nextPut: streamReader next].
	self expectNext: quote.

	^ writeStream contents.