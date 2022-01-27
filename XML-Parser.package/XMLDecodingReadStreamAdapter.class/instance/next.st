accessing
next
	peekChar
		ifNil: [^ streamDecoder nextFromStream: self]
		ifNotNil: [:nextChar |
			peekChar := nil.
			^ nextChar]