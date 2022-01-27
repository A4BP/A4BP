errors
errorExpectedAttributeValueEndButGot: aCharacter
	aCharacter == $<
		ifTrue: [self parseError: 'Attribute value contains "<" character']
		ifFalse: [self errorExpected: 'end of quoted attribute value']