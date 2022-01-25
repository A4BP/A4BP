parser
fillElementsIn: aModel from: document
	|visitor|
	visitor := BPMN20ParserSetinBPMN20ExtensionElementsImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
	^ aModel 