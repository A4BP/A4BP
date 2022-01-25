parser
fillElementsIn: aBPActivityComposite from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPObjectCompositeVisitor new.
	visitor element: aBPActivityComposite.
	self fillElementsIn: aBPActivityComposite from: document visitor: visitor