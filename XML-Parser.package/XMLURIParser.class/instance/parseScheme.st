parsing
parseScheme
	| oldPosition scheme |

	oldPosition := readStream position.
	scheme := self nextDelimitedByAny: SchemeDelimiters.
	(readStream peekFor: $:)
		ifTrue: [^ scheme asLowercase]
		ifFalse: [
			readStream position: oldPosition.
			^ ''].