as yet unclassified
executeVisualization: view
	| v soa cv  |
	v := RTMondrian new.
	v view: view.
	soa := bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	"Do visualization"
	
	v interaction
		popupText: [ :a | 
			'',a name,'-> [CFC:' , a metricCFC asString , ' , NoRel:' , a numberOfRelations asString , ']' ];
		action: #inspect.
	v shape rectangle
		height: [ :a | a metricCFC];
		width: [ :a | a numberOfRelations];
		color: [:n | n accept:cv].
	v nodes: soa process.
	"add the legend"
	self addLegendBuilderView: view values: soa process.
	
	v build.