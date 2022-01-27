view
viewProcessBuilder: v onlst: nodes
	| cv |
	cv := A4BPUIBVFactory colorVisitor.
	v shape box color: (Color lightGray alpha:0.1).	
	v nodes: (Array with:'process') forEach: [
			v shape box color:[ :n | (n accept: cv) alpha:0.2 ].
			"add the nodes to paint, int this case the node represent the process"
			v nodes: nodes forEach: [ :p | 
					v shape labeled: ( p aName ).
					v nodes: (Array with:p aName).
					v shape box color: (Color white alpha:0.6).	
					v nodes: (Array with:'variables') forEach: [ 
							v shape box size: [ :var | var numberOfInvokes ];
							color: (Color green alpha:0.2).
							v nodes: p allVariables.
							v layout grid ].
					v shape box color: (Color lightGray alpha:0.6).	
					v nodes: (Array with:'activities') forEach: [ 
							v shape circle 
								size: 10;
								color: [ :n | n accept: cv ].
							v nodes: p allActivities.
							"v edgesFrom: #parent."
							v layout grid ].
				 v layout grid.
			].
		v layout grid
	].
