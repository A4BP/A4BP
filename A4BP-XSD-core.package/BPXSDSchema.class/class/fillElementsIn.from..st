builder
fillElementsIn: aBPXSDSchema from: document
	| visitor |
	aBPXSDSchema targetNamespace: (self readString: document at: BPBPELParserTagsXMLRef atrTargetNamespace).
	visitor := BPBuilderSetNodesinBPXSDSchemaVisitor new.
	visitor element: aBPXSDSchema.
	self fillElementsIn: aBPXSDSchema from: document visitor: visitor.
	aBPXSDSchema nsNameSpaces: document nameSpaces.
	aBPXSDSchema buildMeRelations.
	^ aBPXSDSchema