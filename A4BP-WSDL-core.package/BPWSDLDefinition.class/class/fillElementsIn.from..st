builder
fillElementsIn: aBPObj from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPWSDLDefinitionVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
	
	aBPObj targetNamespace:(document attributeAt: 'targetNamespace').

	^ aBPObj 