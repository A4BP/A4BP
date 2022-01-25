parsing
parseAuthorityPrefix
	| oldPosition |

	oldPosition := readStream position.
	((readStream peekFor: $/)
		and: [readStream peekFor: $/])
		ifTrue: [^ true]
		ifFalse: [
			readStream position: oldPosition.
			^ false].