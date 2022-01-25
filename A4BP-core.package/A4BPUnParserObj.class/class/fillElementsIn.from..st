builder
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20ParserSetinA4BPUnParserObjVisitor new.
	visitor element: aModel.
	aModel tagName: document name.
	self fillElementsIn: aModel from: document visitor: visitor.