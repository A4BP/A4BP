visualization
executeVisualization: view
	| b soa cv lb |
	b := self buildView:view.
	soa := bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	"Do visualization"
	b interaction
		popupText: [ :a | '',a name,'-> [CFC:' , 
				a metricCFC asString , ' , NoRel:' , 
				a numberOfRelations asString , ']' ];
		action: #inspect.
	
	b nodes: soa process forEach:[ :p | 
		( BPMN20StandarVisualizationSvg init: p ) executeVisualization: b view.
	].
	b layout grid.
	b build.
	
	"Create the legend builder"
	lb := self buildLegendBuilder: view.
	"lb offset:1."
	"lb addText:'width:metric CFC Abs'.
	lb addText:'height: metric CFC'.
	lb addText:'color number Of Relations'."
	"lb below."
	"lb build."	
	
	self addLegendBuilderView: view values: soa allNodes.	
	
