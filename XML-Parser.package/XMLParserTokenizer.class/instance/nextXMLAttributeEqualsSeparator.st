tokenizing
nextXMLAttributeEqualsSeparator
	streamReader skipSeparators.
	self expectNext: $=.
	streamReader skipSeparators.