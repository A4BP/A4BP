as yet unclassified
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20ParserSetinBPMN20ConditionalEventDefinitionImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.