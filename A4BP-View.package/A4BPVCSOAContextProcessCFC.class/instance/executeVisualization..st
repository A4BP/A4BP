as yet unclassified
executeVisualization: view
	| v soa cv  |
	v := self buildView.
	v view: view.
	soa := bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	"Do visualization"
	
	"v interaction
		popupText: [ :a | 
			'',a name,'-> [CFC:' , a metricCFC asString , ' , NoRel:' , a numberOfRelations asString , ']' ];
		action: #inspect."
	v shape box
		height: [ :a | a metricCFC];
		width: [ :a | a numberOfRelations];
		color: [:n | n accept:cv].
	v nodes: soa process.
	"add the legend"
	self addLegendBuilderView: view values: soa process.
	
	v build.