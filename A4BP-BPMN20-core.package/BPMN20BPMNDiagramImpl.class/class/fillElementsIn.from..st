as yet unclassified
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20DiParserDiagramImplVisitor new.
	visitor element: aModel.	
	self fillElementsIn: aModel from: document visitor: visitor.