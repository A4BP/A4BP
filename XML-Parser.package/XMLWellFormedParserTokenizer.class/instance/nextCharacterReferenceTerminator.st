tokenizing
nextCharacterReferenceTerminator
	| nextChar |

	(nextChar := streamReader next) == $;
		ifFalse: [self errorExpectedCharacterReferenceTerminatorButGot: nextChar]