parser
fromXMLDescription: document in: parent
	| aBPObj |
	aBPObj := self new.
	self fillBData: document in: aBPObj.
	aBPObj parent: parent.
	aBPObj myRoot: parent myRoot.
	self fillElementsIn: aBPObj from: document.
	^ aBPObj
	