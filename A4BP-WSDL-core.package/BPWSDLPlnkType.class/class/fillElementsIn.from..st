builder
fillElementsIn: aBPObj from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPWSDLPlnkTypeVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
	^ aBPObj