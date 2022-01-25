as yet unclassified
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20DiParserShapeImplVisitor new.
	visitor element: aModel.
	
	aModel bpmnElement:  ( self readString: document at: 'bpmnElement' ).
	
	self fillElementsIn: aModel from: document visitor: visitor.