streaming
nextNameFrom: aReadStream on: aWriteStream
	"atEnd test is used instead of xmlParserIncludes: because the argument
	readStream may not return nil when atEnd on other platforms"
	(aReadStream atEnd
		or: [(NameChars includes: aReadStream peek) not
			or: [AdditionalNameChars includes: aReadStream peek]])
		ifTrue: [^ false].
	aWriteStream nextPut: aReadStream next.

	[aReadStream atEnd not
		and: [NameChars includes: aReadStream peek]]
		whileTrue: [aWriteStream nextPut: aReadStream next].
	^ true.