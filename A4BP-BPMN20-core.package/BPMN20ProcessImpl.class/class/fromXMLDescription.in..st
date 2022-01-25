parser
fromXMLDescription: document in: parent
	| aBPObj |
	aBPObj := self new.
	self fillBData: document in: aBPObj.
	aBPObj parent: parent.
	aBPObj myRoot: parent myRoot.
	aBPObj myProcess:aBPObj.
	self fillElementsIn: aBPObj from: document.
	^ aBPObj