errors
errorExpectedIncludeSectionTerminatorButGot: aFirstCharacter followedBy: aSecondCharacter
	self
		formatParseError:
			'Expected include section "]]>" terminator ',
			'but got "]{1}{2}" instead'
		with: aFirstCharacter
		with: aSecondCharacter