builder
fillElementsIn: aBPObj from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPWSDLMessageVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
	^ aBPObj