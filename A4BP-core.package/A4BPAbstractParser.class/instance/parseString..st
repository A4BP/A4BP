parser
parseString: string
	^ self parseStream:  (ReadStream on: string)