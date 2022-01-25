builder
fillElementsIn: aBPObj from: document
	| visitor |
	"for each element find tags xml"
	visitor := BPBuilderSetNodesinBPXSDComplexTypeVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.