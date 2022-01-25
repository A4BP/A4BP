tokenizing
nextDeclarationTerminator
	| nextChar |

	(nextChar := streamReader next) == $>
		ifFalse: [self errorExpectedDeclarationTerminatorButGot: nextChar]