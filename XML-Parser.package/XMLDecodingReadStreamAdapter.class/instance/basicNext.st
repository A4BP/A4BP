accessing
basicNext
	stream atEnd
		ifTrue: [^ nil]
		ifFalse: [^ stream next].