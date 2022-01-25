examples
example02_1
	"
	self new example02_1
	"

	| soaWorld b |
	soaWorld := SOAContextTest soaWorldBase.	"Create de principal object to draw"
	b := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
	b interaction
		popupText: #name;
		action: #inspect.	"add a new shape to paint a rectangle a set the instructions to define height and width"
	b shape rectangle
		height: [ :p | p numberOfVariables ];
		width: [ :p | p numberOfActivities ].	"add the nodes to paint, int this case the node represent the process"
	b
		nodes: soaWorld allBPProcess
		forEach: [ :p | 
			b shape rectangle withoutBorder.
			b
				node: p name
				forIt: [ 
					b interaction
						popupText: #name;
						action: #inspect.
					b shape rectangle size: [ :v | v numberOfInvokes * 15 ].
					b nodes: p variables.
					b gridLayout ].
			b verticalLineLayout ].
	b gridLayout.
	b open