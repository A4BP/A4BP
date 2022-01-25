tokenizing - dtd
nextDoctypeDeclarationTerminator
	| nextChar |

	(nextChar := streamReader next) == $>
		ifFalse: [self errorExpectedDoctypeDeclarationTerminatorButGot: nextChar]