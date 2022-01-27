positioning
pushBackCharacter: aCharacter
	peekChar
		ifNil: [peekChar := aCharacter]
		ifNotNil: [
			self
				pushBackStream: (XMLSingleCharacterReadStream on: aCharacter)
				onClose: nil]