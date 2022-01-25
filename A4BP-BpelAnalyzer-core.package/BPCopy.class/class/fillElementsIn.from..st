build
fillElementsIn: aBPCopy from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPCopyVisitor new.
	visitor element: aBPCopy.
	self fillElementsIn: aBPCopy from: document visitor: visitor.