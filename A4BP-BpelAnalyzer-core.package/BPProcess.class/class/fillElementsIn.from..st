parser
fillElementsIn: aBPProcess from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPProcessVisitor new.
	visitor element: aBPProcess.
	self fillElementsIn: aBPProcess from: document visitor: visitor.
	aBPProcess nsNameSpaces: document nameSpaces.