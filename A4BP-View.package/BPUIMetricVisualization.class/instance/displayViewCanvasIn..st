glamour-builder-display
displayViewCanvasIn: constructor
	constructor roassal2
		title: 'view';
		painting: [ :view :obj :tpObj :one :two :three |
			self 
			executeVisualization: view 
			obj:obj 
			tpObj:tpObj 
			methods:(Array with:one with:two with:three).
		].
	^ constructor