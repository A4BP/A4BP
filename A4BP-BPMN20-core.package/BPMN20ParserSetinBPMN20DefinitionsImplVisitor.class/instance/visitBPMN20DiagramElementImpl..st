visitor
visitBPMN20DiagramElementImpl: aModel
	element diagrams at: aModel id put: aModel.
	aModel myRoot: aModel