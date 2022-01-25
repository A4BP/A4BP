accessing
next
	peekChar
		ifNil: [^ streamConverter nextFromStream: stream]
		ifNotNil: [:nextChar |
			prePeekStreamPosition := nil.
			peekChar := nil.
			^ nextChar]