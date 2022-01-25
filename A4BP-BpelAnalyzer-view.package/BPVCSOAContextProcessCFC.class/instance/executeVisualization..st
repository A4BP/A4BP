visualization
executeVisualization: view
	| v soa |
	v := RTMondrian new.
	v view: view.
	soa := bpObj.
	v shape rectangle.
	v
		node: 'bpel'
		forIt: [ 
			v interaction
				popupText: [ :a | '(CFCxNoRel)=(' , a calculateCFC asString , 'x' , a numberOfRelations asString , ')' ];
				action: #inspect.
			v shape rectangle
				height: [ :a | a calculateCFC * 5 ];
				width: [ :a | a numberOfRelations * 5 ].
			v
				nodes: soa allBPProcess
				forEach: [ :p | 
					v shape circle
						size: 1;
						fillColor: (Color blue alpha: 0.3).
					v nodes: p lstActivities.
					v shape circle
						size: 1;
						fillColor: (Color lightGreen alpha: 0.3).
					v nodes: p lstVariables.
					v layout grid ] ]