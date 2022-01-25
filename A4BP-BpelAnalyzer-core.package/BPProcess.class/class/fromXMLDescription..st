parser
fromXMLDescription: document
	"The argument is a complete description of an XML process"

	| bpProcess |
	"is an instante of on BProcess"
	bpProcess := self new.
	self fillBData: document in: bpProcess.
	bpProcess processName: bpProcess aName.
	self fillElementsIn: bpProcess from: document. 
	^ bpProcess