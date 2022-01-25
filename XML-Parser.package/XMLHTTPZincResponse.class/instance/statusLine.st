accessing
statusLine
	| statusLine |
	
	statusLine := self zincResponse statusLine.
	^ String streamContents: [:stream |
		stream
			nextPutAll: statusLine version;
			space.
		statusLine printCodeAndReasonOn: stream].