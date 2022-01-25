parser
fillElementsIn: bpOnMsg from: document
	| visitor |
	visitor := BPBuilderSetNodesinBPOnMessageVisitor new.
	
	bpOnMsg variable: (self readString: document at: 'variable').
	bpOnMsg partnerLink: (self readString: document at: 'partnerLink').
	bpOnMsg portType: (self readString: document at: 'portType').
	bpOnMsg operation: (self readString: document at: 'operation').
	
	
	visitor element: bpOnMsg.
	self fillElementsIn: bpOnMsg from:document visitor: visitor.