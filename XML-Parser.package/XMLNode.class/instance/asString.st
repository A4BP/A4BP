converting
asString
	"Returns the full, untruncated XML source string, unlike #printString,
	which may truncate long printed representations"
	
	^ String streamContents: [:stream | self printOn: stream]