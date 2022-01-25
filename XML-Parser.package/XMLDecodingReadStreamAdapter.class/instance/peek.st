accessing
peek
	^ peekChar
		ifNil: [
			prePeekStreamPosition := stream position.
			peekChar := streamConverter nextFromStream: stream]