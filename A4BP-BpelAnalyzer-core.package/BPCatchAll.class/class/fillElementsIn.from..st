parser
fillElementsIn: aBPObjectComposite from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPObjectCompositeVisitor new.
	visitor element: aBPObjectComposite.
	self fillElementsIn: aBPObjectComposite from: document visitor: visitor