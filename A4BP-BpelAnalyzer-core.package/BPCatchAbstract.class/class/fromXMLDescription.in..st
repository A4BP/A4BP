parser
fromXMLDescription: document in: aBPObject
	| bpObj |
	bpObj := self new.
	self fillElementsIn: bpObj from: document.
	^ bpObj