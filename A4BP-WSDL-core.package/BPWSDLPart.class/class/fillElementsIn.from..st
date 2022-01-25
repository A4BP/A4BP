builder
fillElementsIn: aBPObj from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPWSDLPartVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
	aBPObj element: (document attributeAt: BPBPELParserTagsXMLRef atrElement).
	^ aBPObj