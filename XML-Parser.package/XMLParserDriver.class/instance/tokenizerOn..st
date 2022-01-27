initialization
tokenizerOn: aStringOrStream
	^ self tokenizerClass
		driver: self
		on: aStringOrStream
		readLimit: self readLimit