visitor
visitBPMN20OutgoingImpl: aModel
	self addmyRoot: aModel.
	aModel objWhitMatch: element outgoing.
	element addRefToBuild: aModel.
	self addElement: aModel