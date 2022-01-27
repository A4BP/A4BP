tokenizing
nextName
	| nextChar |

	nameStream reset.
	((NameChars xmlParserIncludes: (nextChar := streamReader next))
		and: [(AdditionalNameChars xmlParserIncludes: nextChar) not])
		ifFalse: [self errorExpectedName].
	nameStream nextPut: nextChar.

	[NameChars xmlParserIncludes: streamReader peek]
		whileTrue: [nameStream nextPut: streamReader next].
	^ nameStream contents.