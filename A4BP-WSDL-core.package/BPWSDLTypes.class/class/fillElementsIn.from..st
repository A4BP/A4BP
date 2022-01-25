builder
fillElementsIn: aBPObj from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPWSDLTypesVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
	^ aBPObj