parsing
parsePort
	(self parseNext: $:)
		ifTrue: [
			^ XMLIntegerReader
				readFrom: (self parseUpToAnyNotSkipping: '/?#') readStream
				withBase: 10]
		ifFalse: [^ nil]