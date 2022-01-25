examples
example04
	"
	self new example04
	"

	| b soaWorld |
	soaWorld := SOAContextTest soaWorldBase.
	b := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
	b interaction
		popupText: #processName;
		action: #inspect.	"add a new shape to paint a rectangle a set the instructions to define height and width"
	b shape rectangle
		height: #numberOfVariables;
		width: [ :p | p numberOfInvokes ].	"add the nodes to paint, int this case the node represent the process"
	b nodes: soaWorld allBPProcess
		forEach: [ :p | 
			| processRelations |
			"each process have many of rectangle wich represent information of their state and references"
			"each process have many of rectangle wich represent information of their state and references"
			b shape label.
			b node: p processName.
			b shape rectangle withoutBorder.	"find relations of process"
			processRelations := p allRelations.
			b node: ''
				forIt: [ 
					b shape rectangle size: 10.
					b interaction popupText: 'all the same'.
					b nodes: processRelations.
					"b edges: (ROEdge linesFor:processRelations)."
					b sugiyamaLayout ].
			b shape rectangle withoutBorder.
			b verticalLineLayout ].
		"b edges: (ROEdge linesFor:(soaWorld allBPProcess from: [ #processName ] toAll: [ :p | p allRelations ]))." 
	b circleLayout.
	b open