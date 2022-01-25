as yet unclassified
standarSvg: aModel view:v
	|svgBuilder|
	svgBuilder := BPMN20StandarVisualizationSvg new.
	svgBuilder bpObj: aModel.
	svgBuilder executeVisualization: v.