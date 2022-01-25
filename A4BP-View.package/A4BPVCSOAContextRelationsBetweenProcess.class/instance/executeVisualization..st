visualization
executeVisualization: view
	| b nodes legendBuilder colorv |
	view @ RTDraggableView.
	b := RTMondrian new.
	colorv := A4BPUIBPModelColorBuilderVisitor new.
	b view: view.
	nodes := bpObj process.
	"---------------------------------------------------------------------------------------------"
	self addInspect: b.
	b shape rectangle color: (Color lightGray alpha: 0.2).
	b nodes: nodes forEach:[ :n |  
		b shape label text: n aName.
		b node: n.
		b shape rectangle
			fillColor: [ :p | (p accept: colorv)];
			height: [ :p | p metricCFC log:2 ];
			width: [ :p | p numberOfActivities log:2 ].
		b node:n.
		b layout verticalLine.
		].
	b shape arrowedLine color: Color black.
	b edges objects: nodes; connectFrom: #yourself toAll: #outFlows.
	
	b layout forceWithCharge: -1500.
	b build.	
	"add the legend"
	legendBuilder := RTLegendBuilder new view: view.
	legendBuilder 
		addColor: (colorv visitBPProcess: nil)
		text: 'BPEL20 width: numberOfActivities heigth: metricCFC'.
	legendBuilder 
		addColor: (colorv visitBPMN20DefinitionsImpl: nil)
		text: 'BPMN20 w:#Activities h:CFC'.
	legendBuilder build.
	"---------------------------------------------------------------------------------------------"