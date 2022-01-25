tokenizing
nextXMLAttributeEqualsSeparator
	| nextChar |

	streamReader skipSeparators.
	(nextChar := streamReader next) == $=
		ifFalse: [self errorExpectedXMLAttributeEqualsSeparatorButGot: nextChar].
	streamReader skipSeparators.