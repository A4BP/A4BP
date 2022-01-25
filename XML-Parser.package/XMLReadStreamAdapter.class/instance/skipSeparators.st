positioning
skipSeparators
	"we use #isXMLWhitespace instead of the narrower, XML-specific
	#isXMLSeparator, because this class supports non-XML input too"
	[self atEnd not
		and: [self peek isXMLWhitespace]]
		whileTrue: [self next]