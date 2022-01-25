tokenizing
nextStartMarkupToken
	| nextChar |

	(nextChar := streamReader next) == $<
		ifFalse: [self errorExpectedStartMarkupTokenButGot: nextChar]