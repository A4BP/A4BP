view
viewProcessBuilder: v onlst: nodes
	| cv |
	cv := A4BPUIBVFactory colorVisitor.
	v shape rectangle fillColor: (Color lightGray alpha:0.1).	
	v node: 'process' forIt: [
			v shape rectangle fillColor:[ :n | (n accept: cv) alpha:0.2 ].
			"add the nodes to paint, int this case the node represent the process"
			v nodes: nodes forEach: [ :p | 
					v shape label text: ( p aName ).
					v node:p aName.
					v shape rectangle fillColor: (Color white alpha:0.6).	
					v node: 'variables' forIt: [ 
							v shape rectangle size: [ :var | var numberOfInvokes ];
							fillColor: (Color green alpha:0.2).
							v nodes: p allVariables.
							v layout grid ].
					v shape rectangle fillColor: (Color lightGray alpha:0.6).	
					v node: 'activities' forIt: [ 
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
