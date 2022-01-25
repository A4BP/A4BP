visualization
executeVisualization: view
	| v model c |
	v := RTMondrian new.
	v view: view.
	view @ RTDraggableView .
	model := bpObj.
	c := A4BPUIBPModelColorBuilderVisitor new.
	
	"Execute the visulization"
	
	c:= A4BPUIBVFactory colorVisitor.
	v shape circle size:10;color:[:n|n accept:c].
	v nodes: model elements.
	v edges notUseInLayout;
	connectToAll: [:n|n outFlows].
	v layout cluster.
	v build.