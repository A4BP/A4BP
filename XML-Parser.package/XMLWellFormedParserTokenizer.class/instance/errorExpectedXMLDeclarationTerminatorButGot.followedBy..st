errors
errorExpectedXMLDeclarationTerminatorButGot: aFirstCharacter followedBy: aSecondCharacter
	self
		formatParseError:
			'Expected "<?xml ...?>" declaration "?>" terminator ',
			'but got "{1}{2}" instead'
		with: aFirstCharacter
		with: aSecondCharacter