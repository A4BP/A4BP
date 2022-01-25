parser
fromXMLDescription: document in: parent
	| aBPObj |
	aBPObj := self new.
	aBPObj parent: parent.
	self fillBData: document in: aBPObj.
	self fillFaultHandlers: aBPObj from: document  in: parent.
	^ aBPObj