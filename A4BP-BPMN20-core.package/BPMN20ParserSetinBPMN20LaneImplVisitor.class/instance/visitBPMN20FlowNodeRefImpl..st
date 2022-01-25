visitor
visitBPMN20FlowNodeRefImpl: aModel
	self addmyRoot: aModel.
	aModel objWhitMatch: element flowNodeRefs.
	element addRefToBuild: aModel.
	self addElement: aModel