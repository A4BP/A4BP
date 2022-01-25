accessing
peek
	(stream atEnd
		or: [limit <= 0])
		ifTrue: [^ nil]
		ifFalse: [^ stream peek]