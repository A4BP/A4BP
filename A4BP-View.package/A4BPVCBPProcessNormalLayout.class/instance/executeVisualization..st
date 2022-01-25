visualization
executeVisualization: view
	| v p cv legendBuilder |
	v := RTMondrian new.
	v view: view.
	view @ RTDraggableView.
	p := bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	v
		node: 'variables'
		forIt: [ 
			v interaction
				popupText: #name;
				action: #inspect.
			v shape rectangle
				color: [ :var | var accept: cv ];
				size: [ :var | var numberOfInvokes ].
			v nodes: p allVariables.
			v layout grid ].
	v
		node: 'actitivies'
		forIt: [ 
			v interaction
				popupText: #name;
				action: #inspect.
			v shape circle
				size: 10;
				color: [ :n | n accept: cv ].
			v nodes: p allActivities.
			v edges connectFrom: #parent.
			v layout grid ].
	v
		node: 'wsdl'
		forIt: [ 
			v interaction
				popupText: #name;
				action: #inspect.
			v shape rectangle
				size: 10;
				color: [ :var | var accept: cv ].
			v nodes: p allWSDLs.
			v layout verticalLine ].
	v edges objects: p allActivities from: #yourself to: [ :n | n linkOut ].
	v edges objects: p allVariables from: #yourself toAll: [ :n | n lstRelations ].
	v layout horizontalLine.
	v build.
	v view pushFrontEdges.	"add the legend"
	legendBuilder := A4BPRTLegendBuilder new
		view: view;
		addMetamodel: p.
	legendBuilder build