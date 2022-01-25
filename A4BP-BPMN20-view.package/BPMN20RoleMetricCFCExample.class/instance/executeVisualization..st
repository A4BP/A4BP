visualization
executeVisualization: rtView
	| view model cv eb lb values entities circle|
	view := RTMondrian new.
	view view: rtView.
	rtView @ RTDraggableView .
	model := bpObj.
	
	"Execute the visulization"
	
	cv := A4BPUIBVFactory color.
	view interaction action:[ :n | n inspect].
	values := model lanes.
	view shape rectangle color:[: n | (n accept: cv)].
	view nodes: values forEach:[:nn | 
		"view shape label text: (nn aName size > 0 ifTrue:[ nn aName copyFrom:1 to:4] ifFalse:[nn aName])."
		view shape label text:[:n| n aName].
		view node:nn.
		view shape rectangle 
		width:[: n | n metricCFCAbs * 10];
		height:[: n | ( n numberOfRelations  + 2 ) * 20];
		color:[: n | Color gray alpha: 1 - (1 / (n numberOfRelations + 1) )].
		view node: nn.
		view layout verticalLine.
		].
	
	eb := view edges.
	eb shape line color:(Color lightGray).
	eb connectToAll:#outFlows.
	circle:= view layout circle.
	circle radius: 200.
	view build.
	lb := RTLegendBuilder new view: view view.
	lb addText:'width: metric CFC Absolute'.
	lb addText:'height: metric CFC'.
	lb addText:'color: number Of Relations'.
	entities := Dictionary new.
	values do:[ :p | entities at: p class put: p class].
	entities do:[ :p |  lb addColor:(p new accept: cv) text: p name ].
	lb right.
	lb build.
	