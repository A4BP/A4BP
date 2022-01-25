visualization
executeVisualization: view
	| v p cv |
	v := RTMondrian new.
	v view: view.
	view @ RTDraggableView .
	p := bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	v shape rectangle color: (Color lightGray alpha:0.2).
	v
		node: 'v'
		forIt: [ 
			self addInspect: v.
			v shape rectangle
				color: Color lightOrange;
				size: [ :var | var numberOfInvokes ].
			v nodes: p allVariables.
			v layout verticalLine ].
	v shape rectangle color: (Color lightGray alpha:0.2).		
	v
		node: 'activities'
		forIt: [ 
			self addInspect: v.
			v shape circle
				size: 10;
				"cv simple visitor color builder"
				color: [ :n | n accept: cv ].
			"all activities in the metamodel"
			v nodes: p allActivities.
			v edges connectToAll: #flows.
			v layout tree ].
	v shape rectangle color: (Color lightGray alpha:0.2).
	v
		node: 'wsdl'
		forIt: [ 
			self addInspect: v.
			v shape rectangle
				size: 10;
				color: Color lightGreen.
			v nodes: p allWSDLs.
			v layout verticalLine ].
	v edges objects: p allActivities from: #yourself to: [ :n | n linkOut ].
	v edges objects: p allVariables from: #yourself toAll: [ :n | n lstRelations ].
	v layout horizontalLine.
	v build.
	v view pushFrontEdges.