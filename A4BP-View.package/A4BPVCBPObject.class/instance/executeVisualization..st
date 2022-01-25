execute
executeVisualization: view
	| v p |
	v := view.
	p := bpObj.
	v shape label.
	v node: [ p ]