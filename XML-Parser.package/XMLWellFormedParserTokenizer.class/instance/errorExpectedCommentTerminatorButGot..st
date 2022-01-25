errors
errorExpectedCommentTerminatorButGot: aCharacter
	self
		formatParseError:
			'Comments cannot contain "--" sequences',
			(aCharacter
				ifNil: ['']
				ifNotNil: [', like "--{1}",']),
			' and any "--" must be followed by ">" to terminate the comment'
		with: aCharacter