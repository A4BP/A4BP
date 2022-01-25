parser
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20ParserSetinBPMN20LaneSetImplVisitor new.
	visitor element: aModel.
	
	aModel aName: document name.
	
	self fillElementsIn: aModel from: document visitor: visitor.
	"aModel nsNameSpaces: document nameSpaces."