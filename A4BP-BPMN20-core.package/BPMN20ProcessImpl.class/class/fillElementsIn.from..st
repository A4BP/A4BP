parser
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20ParserSetinBPMN20ProcessImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.