as yet unclassified
executeVisualization: view
	| b colorv|
	b := RTMondrian new.
	view @ RTDraggableView.
	colorv:= A4BPUIBPModelColorBuilderVisitor instance.
	b view: view.
	b shape ellipse size:[:n|n size / 10].
	b edges
		connectTo: [ :node | node getChildrenNodes ].
	b layout force charge: -150.
	b nodes: bpObj getChildrenNodes.
	b build.