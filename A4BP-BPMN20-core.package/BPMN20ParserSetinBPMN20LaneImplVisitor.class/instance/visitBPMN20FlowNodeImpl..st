visitor
visitBPMN20FlowNodeImpl: aModel
	self addmyRoot: aModel.
	aModel objWhitMatch: element incoming.
	element addRefToBuild: aModel.
	self addElement: aModel