examples
example10_2_colors
	"
	self new example10_2_colors
	"

	| v soaWorld |
	soaWorld := SOAContextTest soaWorldBase.	"rel := OrderedCollection new."	"Create de principal object to draw"
	v := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
	v
		node: 'bpel'
		forIt: [ 
			"---------------------------------------------------------------------------------------------------------------------------"
			"------------------------------------------------------BPEL-----------------------------------------------------------------"
			"---------------------------------------------------------------------------------------------------------------------------"
			v interaction
				popupText: #name;
				action: #inspect.
			v shape rectangle fillColor: Color green.	"add the nodes to paint, int this case the node represent the process"
			v
				nodes: soaWorld allBPProcess
				forEach: [ :p | 
					"each process have many of rectangle wich represent information of their state and references"
					"v shape label."
					"v node: p processName."
					v
						node: 'variables'
						forIt: [ 
							v shape rectangle size: [ :var | var numberOfInvokes ].
							v nodes: p variables lstVariables.
							v gridLayout ].
					v
						node: 'activities'
						forIt: [ 
							| lstAct lstwsdl |
							v shape circle size: 10.
							v interaction
								action: #inspect;
								dynamicEdgeToAll: [ :object | 
											object isARelationableActivity
												ifTrue: [ {(object bpPartnerLink bpwsdl)} ]
												ifFalse: [ #() ] ]
									using: ROLine red.
							v nodes: p lstActivities.
							lstAct := p lstActivities select: [ :act | act isARelationableActivity ].
							lstwsdl := lstAct collect: [ :act | act bpPartnerLink bpwsdl ].
							v verticalLineLayout ]	"v edgesFrom: soaWorld allBPWSDL." ] ].	"---------------------------------------------------------------------------------------------------------------------------"	"------------------------------------------------------WSDL-----------------------------------------------------------------"	"---------------------------------------------------------------------------------------------------------------------------"
	v interaction
		popupText: #name;
		action: #inspect.
	v shape rectangle fillColor: Color yellow.
	v
		nodes: soaWorld allBPWSDL
		forEach: [ :p | 
			"each process have many of rectangle wich represent information of their state and references"
			v shape label.	"v node: p aName."
			v interaction forward.
			v shape rectangle withoutBorder.
			v
				node: 'lstRelations'
				forIt: [ 
					v shape rectangle
						size: 5;
						if: [ :var | var class = BPProcess ] fillColor: Color red;
						if: [ :var | var class = BPPartnerLink ] fillColor: Color blue.
					v nodes: p lstRelations.
					v gridLayout ].
			v verticalLineLayout ].
	soaWorld allBPProcess
		do: [ :p | 
			v shape line color: (Color gray alpha: 0.4).
			v edges: p lstActivities from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] ].	"v edges: soaWorld allBPWSDL from: #yourself toAll: soaWorld allBPWSDL."
	v gridLayout.
	ROEaselMorphic new populateMenuOn: v.
	v open