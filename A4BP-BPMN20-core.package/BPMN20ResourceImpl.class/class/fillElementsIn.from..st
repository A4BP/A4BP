parser
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20ParserSetinBPMN20ResourceImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
	"aModel nsNameSpaces: document nameSpaces."