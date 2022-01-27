streaming
nextNCNameFrom: aReadStream on: aWriteStream
	"atEnd test is used instead of xmlParserIncludes: because the argument
	readStream may not return nil when atEnd on other platforms"
	| nextChar |

	(aReadStream atEnd
		or: [(NameChars includes: (nextChar := aReadStream peek)) not
			or: [nextChar == $:
				or: [AdditionalNameChars includes: nextChar]]])
		ifTrue: [^ false].
	aWriteStream nextPut: aReadStream next.

	[aReadStream atEnd
		or: [(NameChars includes: (nextChar := aReadStream peek)) not
			or: [nextChar == $:]]]
		whileFalse: [aWriteStream nextPut: aReadStream next].
	^ true.