private
executeInRoassal2: glmc
	|r2|
	r2:=glmc roassal2.
	r2
		painting: [ :view :viewBuilder | self executeVisualization: view ];
		title: A4BPUII18n msg msgVisualization