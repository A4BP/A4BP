parser
fromXMLDescription: document in: parent
	| bpObj |
	bpObj := self new.
	bpObj parent: parent.
	bpObj bpProcess: parent.
	self fillPartnertLinks: bpObj from: document in: parent.
	^ bpObj