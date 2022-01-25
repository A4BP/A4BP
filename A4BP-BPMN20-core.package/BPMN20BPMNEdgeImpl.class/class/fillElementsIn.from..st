as yet unclassified
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20DiParserShapeImplVisitor new.
	visitor element: aModel.	
	self fillElementsIn: aModel from: document visitor: visitor.