parser
fromXMLDescription: document
	| obj |
	obj := self new.
	self fillBData: document in: obj.
	self fillElementsIn: obj from: document.
	^ obj