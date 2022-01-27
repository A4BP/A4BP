file open/close
close
	(stream respondsTo: #close)
		ifTrue: [stream close]