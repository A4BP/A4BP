as yet unclassified
executeVisualization: view
	| b soa cv lb |
	b := A4BPMondrian new.
	b view: view.
	soa := bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	"Do visualization"
	b interaction
		popupText: [ :a | '',a name,'-> [CFC:' , 
				a metricCFC asString , ' , NoRel:' , 
				a numberOfRelations asString , ']' ];
		action: #inspect.
	b shape box color: (Color gray alpha:0.2).
	b nodes: soa process forEach:[ :p | 
		"b shape label labeled:p."
		b nodes: (Array with:p).
		( A4BPVCBasicRelations init: p ) executeMondrianViz: b.
		b layout tree.
	].
	b layout grid.
	b build.
	
	"Create the legend builder"
	"lb := RSLegend new view: view.
	lb offset:1.
	lb addText:'width:metric CFC Abs'.
	lb addText:'height: metric CFC'.
	lb addText:'color number Of Relations'.
	lb below.
	lb build.	"
	
	self addLegendBuilderView: view values: soa allNodes.
	view @ RSCanvasController.
	view open.