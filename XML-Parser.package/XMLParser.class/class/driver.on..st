instance creation
driver: aDriver on: aStringOrStream
	^ self new setDriver: aDriver tokenizer: (aDriver tokenizerOn: aStringOrStream)