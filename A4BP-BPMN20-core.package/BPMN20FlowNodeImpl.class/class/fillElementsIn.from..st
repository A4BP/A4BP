parser
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20ParserSetinBPMN20FlowNodeImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.