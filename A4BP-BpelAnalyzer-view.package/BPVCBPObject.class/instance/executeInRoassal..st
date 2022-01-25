private
executeInRoassal: glmc
	glmc roassal
		painting: [ :view :viewBuilder | self executeVisualization: view ];
		title: A4BPUII18n msg msgVisualization