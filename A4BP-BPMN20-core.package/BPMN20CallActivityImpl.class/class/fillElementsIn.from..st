parser
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20ParserSetinBPMN20CallActivityImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.
	