visualization
executeVisualization: view
	| b nodes legendBuilder colorv |
	b:= self buildView: view.
	colorv := A4BPUIBPModelColorBuilderVisitor new.
	nodes := bpObj process.
	"---------------------------------------------------------------------------------------------"
	"self addInspect: b."
	b shape box color: (Color lightGray alpha: 0.2).
	b nodes: nodes forEach:[ :n |  
		b shape labeled: n aName.
		b nodes: (Array with:n).
		b shape box
			color: [ :p | (p accept: colorv)];
			height: [ :p | p metricCFC log:2 ];
			width: [ :p | p numberOfActivities log:2 ].
		b nodes:(Array with:n).
		b layout vertical.
		].
	b shape arrowedLine color: Color black.
	b lines objects: nodes; connectFrom: #yourself toAll: #outFlows.
	
	"b layout forceWithCharge: -1500."
	b build.	
	"add the legend"
	"legendBuilder := self buildLegendBuilder: view.
	legendBuilder 
		addColor: (colorv visitBPProcess: nil)
		text: 'BPEL20 width: numberOfActivities heigth: metricCFC'.
	legendBuilder 
		addColor: (colorv visitBPMN20DefinitionsImpl: nil)
		text: 'BPMN20 w:#Activities h:CFC'.
	legendBuilder build."
	"---------------------------------------------------------------------------------------------"