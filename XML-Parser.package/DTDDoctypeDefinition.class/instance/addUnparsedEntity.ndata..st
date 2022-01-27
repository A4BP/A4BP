adding
addUnparsedEntity: aName ndata: aNotation
	self unparsedEntities
		at: aName
		ifAbsentPut: [aNotation]