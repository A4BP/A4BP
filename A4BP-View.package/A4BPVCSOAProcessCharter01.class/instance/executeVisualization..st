visualization
executeVisualization: view
	| b cv lb ds p|
	b := RTGrapher new.
	b view:view.
	view @ RTDraggableView.
	p:= bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	b extent: 500 @ 500.

	"do visualization"	
	self addInspect: b.
	
	ds := RTData new.
	ds interaction popup.
	ds dotShape circle color: [:n | n accept:cv ];size:[:n|n size * 10].
	ds y: #numberOfActivities.
	ds points: p process.
	b add: ds.

	
	b shape rectangle color: Color veryLightGray.
	b interaction highlightColored: Color red.

	b interaction popup
		named: [ :c | c name , ' methods' ]
		background: Color veryVeryLightGray
		group: [ :group :pro | 
			| s ms |
			"do visualization using simple diagram"
			s := RTBox new
				size: #calculateCFC;
				color: Color blue.
			ms := pro model allActivities.
			group addAll: (s elementsOn: ms).
			RTGridLayout on: group ].

	b build.
	
	"add the legend"
	lb := A4BPRTLegendBuilder new view: view.
	lb addText: 'y: Number of Activities'.
	lb addText: 'circle size: element size'.
	lb build