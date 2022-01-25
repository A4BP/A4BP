parser
fillElementsIn: aModel from: document
	| visitor |
	visitor := BPMN20ParserSetinBPMN20DefinitionsImplVisitor new.
	visitor element: aModel.	"start set model default information"
	aModel version: (self readString: document at: 'version').
	aModel fileRevision: (self readString: document at: 'fileRevision').
	aModel myRoot: aModel.
	self fillElementsIn: aModel from: document visitor: visitor