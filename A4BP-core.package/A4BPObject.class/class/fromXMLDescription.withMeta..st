parser
fromXMLDescription: document withMeta: metaDocument
	| obj |
	obj := self new.
	self fillBData: document in: obj.
	self fillBDataUsingReflection: document in: obj.
	self fillElementsIn: obj from: document withMeta: metaDocument.
	^ obj