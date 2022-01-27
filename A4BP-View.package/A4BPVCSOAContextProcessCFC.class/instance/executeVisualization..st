visualization
executeVisualization: view
	| b soa cv  |
	b := self buildView:view.
	soa := bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	"Do visualization"
	
	"v interaction
		popupText: [ :a | 
			'',a name,'-> [CFC:' , a metricCFC asString , ' , NoRel:' , a numberOfRelations asString , ']' ];
		action: #inspect."
	b shape box
		height: [ :a | a metricCFC];
		width: [ :a | a numberOfRelations];
		color: [:n | n accept:cv].
	b nodes: soa process.
	"add the legend"
	self addLegendBuilderView: view values: soa process.
	
	b build.