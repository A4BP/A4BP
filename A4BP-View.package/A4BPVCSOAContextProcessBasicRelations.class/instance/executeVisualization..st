as yet unclassified
executeVisualization: view
	| v soa cv lb |
	v := A4BPMondrian new.
	v view: view.
	soa := bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	"Do visualization"
	v interaction
		popupText: [ :a | '',a name,'-> [CFC:' , 
				a metricCFC asString , ' , NoRel:' , 
				a numberOfRelations asString , ']' ];
		action: #inspect.
	v shape rectangle color: (Color gray alpha:0.2).
	v nodes: soa process forEach:[ :p | 
		v shape label text:p.
		v node:p.
		( A4BPVCBasicRelations init: p ) executeMondrianViz: v.
	].
	v layout grid.
	v build.
	
	"Create the legend builder"
	lb := RSLegend new view: view.
	lb offset:1.
	"lb addText:'width:metric CFC Abs'.
	lb addText:'height: metric CFC'.
	lb addText:'color number Of Relations'."
	lb below.
	lb build.	
	
	self addLegendBuilderView: view values: soa allNodes.	
	
