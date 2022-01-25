tokenizing
nextXMLDeclarationTerminator
	| firstChar secondChar |

	firstChar := streamReader next.
	secondChar := streamReader next.
	(firstChar == $?
		and: [secondChar == $>])
		ifFalse: [
			self
				errorExpectedXMLDeclarationTerminatorButGot: firstChar
				followedBy: secondChar].