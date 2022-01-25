builder
fillElementsIn: aBPObj from: document
	| visitor |
	aBPObj stType: (self readString: document at: BPBPELParserTagsXMLRef atrType).
	"for each element find tags xml"
	visitor := BPBuilderSetNodesinBPXSDElementVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.