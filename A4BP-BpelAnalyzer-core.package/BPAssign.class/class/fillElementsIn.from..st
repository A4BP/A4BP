parser
fillElementsIn: aBPAssing from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPAssingVisitor new.
	visitor element: aBPAssing.
	self fillElementsIn: aBPAssing from: document visitor: visitor.