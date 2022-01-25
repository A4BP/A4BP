parser
fillFlowNode: aModel from: document
	aModel isForCompensation: (self readBoolean: document at: 'isForCompensation').
