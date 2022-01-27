tokenizing
nextXMLVersionAttributeValue
	| quote |

	quote := self expectQuote.

	writeStream
		reset;
		nextPut: self expectDigit;
		nextPut: (self expectNext: $.);
		nextPut: self expectDigit.

	[streamReader atEnd
		or: [streamReader peek == quote]]
		whileFalse: [writeStream nextPut: self expectDigit].

	self expectNext: quote.
	^ writeStream contents.