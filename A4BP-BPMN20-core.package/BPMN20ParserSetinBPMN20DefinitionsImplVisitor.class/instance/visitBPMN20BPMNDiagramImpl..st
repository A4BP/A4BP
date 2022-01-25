visitor
visitBPMN20BPMNDiagramImpl: aModel
	element diagrams at: aModel id put: aModel.
	element addChildren: aModel.
	aModel myRoot: element