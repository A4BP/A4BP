entity replacing
characterFromCodePoint: anInteger
	(anInteger notNil and: [anInteger > 0])
		ifFalse: [^ nil].
	^ [anInteger asCharacter]
		on: Error
		do: [:error | nil].