streaming
skipSeparators
	"nil understands xmlParserIsSeparator so the result of the inlined peek
	does not need to be tested for nil first"
	[(peekChar ifNil: [peekChar := self basicNext]) "inlined peek"
		xmlParserIsSeparator]
		whileTrue: [
			"inlined next"
			peekChar == normalizedLineEndingChar
				ifTrue: [currentLineNumber := currentLineNumber + 1].
			readLimit ifNotNil: [
				(readLimit := readLimit - 1) >= 0
					ifFalse: [self errorReadLimitExceeded]].
			peekChar := nil]