accessing
next
	(stream atEnd
		or: [limit <= 0])
		ifTrue: [^ nil]
		ifFalse: [
			limit := limit - 1.
			^ stream next]