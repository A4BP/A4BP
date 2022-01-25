parser
fromXMLDescription: document
	| obj |
	obj := self new.
	self fillElementsIn: obj from: document.
	^ obj