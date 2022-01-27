private
parseUpToEndAfterNext: aCharacter
	(self parseNext: aCharacter)
		ifTrue: [^ readStream upToEnd]
		ifFalse: [^ '']