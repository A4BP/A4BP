view
viewProcessBuilder: v onlst: nodes
	| c |
	c := A4BPUIBPModelColorBuilderVisitor new.
	v
		node: 'bpel'
		forIt: [ 
			v shape rectangle fillColor: Color green.	"add the nodes to paint, int this case the node represent the process"
			v
				nodes: nodes
				forEach: [ :p | 
					v
						node: 'variables'
						forIt: [ 
							v shape rectangle size: [ :var | var numberOfInvokes ].
							v nodes: p lstVariables.
							v layout grid ].
					v shape rectangle fillColor: Color lightGray.
					v
						node: 'activities'
						forIt: [ 
							v shape circle
								size: 10;
								color: [ :n | 
											| color |
											color := n accept: c.
											color ].
							v nodes: p lstAllActivities.
							v edges connectFrom: #parent.
							v layout tree ] ] ]