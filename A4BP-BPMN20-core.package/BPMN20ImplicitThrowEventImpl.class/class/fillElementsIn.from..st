as yet unclassified
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20ParserSetinBPMN20ImplicitThrowEventImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.