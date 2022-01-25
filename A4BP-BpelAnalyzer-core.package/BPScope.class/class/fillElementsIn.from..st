parser
fillElementsIn: aBPScope from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPScopeVisitor new.
	visitor element: aBPScope.
	self fillElementsIn: aBPScope from: document visitor: visitor