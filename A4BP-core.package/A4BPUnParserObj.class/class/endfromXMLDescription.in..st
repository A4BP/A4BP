builder
endfromXMLDescription: document in: parent
	| aBPObj |
	aBPObj := self new.
	aBPObj parent: parent.
	self fillBData: document in: aBPObj.
	^ aBPObj