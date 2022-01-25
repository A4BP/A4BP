visualization
executeVisualization: view
	| b nodes legendBuilder colorv |
	"
	Roassal 2
	Create de principal object to draw
	"
	view @ RTDraggableView.
	b := RTMondrian new.
	colorv := A4BPUIBVFactory colorVisitor.
	b view: view.
	nodes := bpObj process.
	"---------------------------------------------------------------------------------------------"
	b shape rectangle
		fillColor: [ :n | n accept: colorv ];
		height: [ :p | p metricCFC ];
		width: [ :p | p numberOfActivities ].
	self addInspect: b.
	b nodes: nodes.
	b shape arrowedLine color: Color black.
	b edges objects: nodes from: #yourself toAll: #allInvokesProcess.
	b layout tree.
	b build.	
	"add the legend"
	legendBuilder := RTLegendBuilder new view: view.
	legendBuilder addColor: (BPProcess new accept: colorv) text: 'Process w:numberOfActivities h:calculateCFC'.
	legendBuilder build.
	"---------------------------------------------------------------------------------------------"