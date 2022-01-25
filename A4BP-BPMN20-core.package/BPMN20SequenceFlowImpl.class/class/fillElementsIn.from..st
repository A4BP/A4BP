parser
fillElementsIn: aModel from: document
	| visitor ref|
	visitor := BPMN20ParserSetinBPMN20SequenceFlowImplVisitor new.
	visitor element: aModel.
	aModel isImmediate: ( self readBoolean: document at: 'isImmediate').
	ref := BPMN20SourceRefImpl fromXMLDescription: document.
	ref accept: visitor.
	ref := BPMN20TargetRefImpl fromXMLDescription: document.
	ref accept: visitor.
	self fillElementsIn: aModel from: document visitor: visitor.