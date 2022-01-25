tokenizing
nextPITerminator
	| nextChar |

	(nextChar := streamReader next) == $>
		ifFalse: [self errorExpectedPITerminatorButGot: nextChar]