parser
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20ParserSetinBPMN20StartEventImplVisitor new.
	visitor element: aModel.
	aModel isInterrupting: (self readBoolean: document at: 'isInterrupting').
	self fillElementsIn: aModel from: document visitor: visitor.