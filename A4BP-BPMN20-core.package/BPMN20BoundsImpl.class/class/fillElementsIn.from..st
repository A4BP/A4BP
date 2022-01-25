as yet unclassified
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20DiParserBoundsImplVisitor new.
	visitor element: aModel.
	"<Bounds x=""0"" y=""0"" width=""700"" height=""350"" 
	xmlns=""http://www.omg.org/spec/DD/20100524/DC"" />"
	
	aModel x: (self readInt: document at: 'x').
	aModel y: (self readInt: document at: 'y').
	aModel width: (self readInt: document at: 'width').
	aModel height: (self readInt: document at: 'height').
	
	self fillElementsIn: aModel from: document visitor: visitor.