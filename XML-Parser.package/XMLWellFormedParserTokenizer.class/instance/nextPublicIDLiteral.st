tokenizing - dtd
nextPublicIDLiteral
	| quote nextChar |

	quote := self expectQuote.
	writeStream reset.
	[(nextChar := streamReader peek) == quote
		or: [(PubidChars xmlParserIncludes: nextChar) not]]
		whileFalse: [writeStream nextPut: streamReader next].
	self expectNext: quote.

	^ writeStream contents.