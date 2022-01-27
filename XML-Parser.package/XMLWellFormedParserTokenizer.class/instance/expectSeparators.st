tokenizing - expecting
expectSeparators
	"nil understands xmlParserIsSeparator so no nil test is needed"
	streamReader peek xmlParserIsSeparator
		ifTrue: [
			streamReader
				next;
				skipSeparators]
		ifFalse: [self errorExpectedSeparators]