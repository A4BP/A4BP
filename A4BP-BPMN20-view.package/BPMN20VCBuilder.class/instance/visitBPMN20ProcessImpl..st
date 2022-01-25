as yet unclassified
visitBPMN20ProcessImpl: aModel
	| visualizations|
	visualizations := OrderedCollection new.
	self addViz: BPMN20SimpleCluster inList: visualizations withModel: aModel.
	self addViz: BPMN20StandarVisualizationSvg inList: visualizations withModel: aModel.
	^ visualizations