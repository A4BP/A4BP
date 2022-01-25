errors
errorExpectedCommentStartButGot: aCharacter
	self
		formatParseError:
			'Expected comment starting "<--" sequence but got "<-{1}" instead'
		with: aCharacter