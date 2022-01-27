accessing
peek
	^ peekChar ifNil: [peekChar := streamDecoder nextFromStream: self]