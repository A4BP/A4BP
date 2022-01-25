parser
fromXMLDescription: document in: parent
	| aBPObj |
	aBPObj := self new.
	aBPObj parent: parent.
	self fillBData: document in: aBPObj.
	aBPObj aName: 'variables'.
	self fillVariables: aBPObj from: document in: parent.
	^ aBPObj