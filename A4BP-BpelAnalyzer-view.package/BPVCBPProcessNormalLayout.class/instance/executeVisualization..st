visualization
executeVisualization: view
	"this visualization is execute using roassal1"

	| v p cv legendBuilder |
	v := RTMondrian new.
	v view: view.
	view @ RTDraggableView.
	p := bpObj.
	cv := A4BPUIBPModelColorBuilderVisitor new.
	v shape rectangle color: (Color lightGreen alpha:0.3).
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
			v layout verticalLine ].
	v shape rectangle color: (Color lightGreen alpha:0.3).
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
			v layout tree ].
	v shape rectangle color: (Color lightGreen alpha:0.3).
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
	v view pushFrontEdges.	
		
	"add the legend"
	
	legendBuilder := RTLegendBuilderA4BP new view: view.
	legendBuilder addColor: (BPProcess new accept: cv) text: 'BPEL Process'.
	legendBuilder addColor: (BPWSDLWsdl new accept: cv) text: 'WSDL'.
	legendBuilder addColor: (BPVariable new accept: cv) text: 'Variables'.
	BPActivity allSubclasses
		do: [ :c | 
			| ob |
			ob := c new.
			legendBuilder addColor: (ob accept: cv) text: ob class name ].
	legendBuilder build
	