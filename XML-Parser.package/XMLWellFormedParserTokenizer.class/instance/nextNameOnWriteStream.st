tokenizing - dtd
nextNameOnWriteStream
	| nextChar |

	((NameChars xmlParserIncludes: (nextChar := streamReader next))
		and: [(AdditionalNameChars xmlParserIncludes: nextChar) not])
		ifFalse: [self errorExpectedName].
	writeStream nextPut: nextChar.

	[NameChars xmlParserIncludes: streamReader peek]
		whileTrue: [writeStream nextPut: streamReader next].