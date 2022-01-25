visitor
visitBPMN20TargetRefImpl: aModel
	aModel objWhitMatch: element.
	element addRefToBuild: aModel