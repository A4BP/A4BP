parsing
parseAuthorityPrefix
	| oldPosition |

	oldPosition := readStream position.
	((self parseNext: $/)
		and: [self parseNext: $/])
		ifTrue: [^ true]
		ifFalse: [
			readStream position: oldPosition.
			^ false].