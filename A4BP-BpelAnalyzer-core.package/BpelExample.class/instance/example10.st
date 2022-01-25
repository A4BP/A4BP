examples
example10
	"
	self new example10
	"

	| v soaWorld rel |
	soaWorld := SOAContextTest soaWorldBase.
	rel := OrderedCollection new.	"Create de principal object to draw"
	v := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
	v
		node: 'process'
		forIt: [ 
			v interaction
				popupText: #name;
				action: #inspect.	"add a new shape to paint a rectangle a set the instructions to define height and width"
			v shape rectangle
				height: #numberOfVariables;
				width: [ :p | p numberOfInvokes ].	"add the nodes to paint, int this case the node represent the process"
			v
				nodes: soaWorld allBPProcess
				forEach: [ :p | 
					"each process have many of rectangle wich represent information of their state and references"
					v shape label.
					v node: p processName.
					v shape rectangle withoutBorder.
					v
						node: 'v'
						forIt: [ 
							v shape rectangle
								size: [ :var | var numberOfInvokes * 15 ];
								if: [ :var | '*Operation*' match: var aName ] fillColor: Color red;
								if: [ :var | '*Account*' match: var aName ] fillColor: Color blue.
							v nodes: p variables lstVariables .
							v gridLayout ].
					v gridLayout ].
			v gridLayout ].	"---------------------------------------------------------------
				---------------------------------------------------------------
		---------------------------------------------------------------"
	v
		node: 'wsdl'
		forIt: [ 
			v interaction
				popupText: #name;
				action: #inspect.
			v
				nodes: soaWorld allBPWSDL
				forEach: [ :p | 
					"each process have many of rectangle wich represent information of their state and references"
					v shape label.
					v node: p name.
					v shape rectangle withoutBorder.
					v verticalLineLayout ].
			v gridLayout ].
	v gridLayout.
	v open