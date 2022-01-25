testing
atEnd
	^ stream atEnd
		or: [stream peek ~~ $%]