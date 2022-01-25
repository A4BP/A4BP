private
executeInRoassal2: glmc
	| r2 |
	r2 := glmc roassal2.
	r2
		painting: [ :rview :viewBuilder | 
			"For all visualization can be draggable"
			rview @ RTDraggableView.
			self executeVisualization: rview.
			rview canvas focusOnCenterScaled.
			viewBuilder view:rview. ];
		title: A4BPUII18n msg msgVisualization