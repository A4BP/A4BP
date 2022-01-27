tokenizing - expecting
expectUpToAll: aString
	writeStream reset.
	[streamReader atEnd]
		whileFalse: [
			(streamReader nextMatchAll: aString)
				ifTrue: [^ writeStream contents].
			writeStream nextPut: streamReader next].
	self errorExpectedLiteral: aString.