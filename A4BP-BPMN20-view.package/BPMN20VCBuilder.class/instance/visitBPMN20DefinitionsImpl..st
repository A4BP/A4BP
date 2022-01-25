visiting
visitBPMN20DefinitionsImpl: aModel
	| vizList |
	vizList := OrderedCollection new.
	"Stantard visualization"
	self setVisualizationForAllModel: vizList inModel: aModel.
	self addViz: BPMN20StandarVisualizationSvg inList: vizList withModel: aModel.
	"Metric example CFC"
	self addViz: BPMN20MetricCFCExample inList: vizList withModel: aModel.
	self addViz: BPMN20RoleMetricCFCExample inList: vizList withModel: aModel.
	self addViz: BPMN20VCGlyphsExample inList: vizList withModel: aModel.
	^ vizList