visualization
executeVisualization: view
	| b colorv |
	b := self buildView.
	colorv := A4BPUIBVFactory colorVisitor.
	b view: view.
	"start the visualization"
	b shape circle color:[:node | node accept:colorv]; size:[:n | n metricCFCAbs].
	b nodes: bpObj allNodes.
	b lines connectToAll: [ :node | node allRelations ].
	b layout grid.
	b build.

	"add the legend"
	self addLegendBuilderView: view values: bpObj allNodes.
		
