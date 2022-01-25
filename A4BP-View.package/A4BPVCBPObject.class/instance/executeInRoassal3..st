private
executeInRoassal3: glmc
	| r3 |
	r3  := glmc roassal3.
	r3
		painting: [ :rview :viewBuilder | 
			"For all visualization can be draggable"
			rview @ RSDraggable.
			self executeVisualization: rview.
			"rview canvas focusOnCenterScaled."
			viewBuilder view:rview. ];
		title: A4BPUII18n msg msgVisualization