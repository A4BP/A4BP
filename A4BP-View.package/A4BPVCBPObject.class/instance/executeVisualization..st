execute
executeVisualization: view
	| v p |
	self halt.
	v := view.
	p := bpObj.
	v shape label.
	v node: [ p ]