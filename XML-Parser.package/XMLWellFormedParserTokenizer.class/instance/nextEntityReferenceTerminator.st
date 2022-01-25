tokenizing
nextEntityReferenceTerminator
	| nextChar |

	(nextChar := streamReader next) == $;
		ifFalse: [self errorExpectedEntityReferenceTerminatorButGot: nextChar]