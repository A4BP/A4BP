parser
fillElementsIn: aModel from: document
	| visitor |
	visitor := self getVisitor.
	visitor element: aModel.
	aModel refId: (self readString: document at: 'sourceRef').
	^ aModel