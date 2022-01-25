visualization
executeVisualization: rtView
	| m model cv eb lb values entities circle|
	m := RTMondrian new.
	m view: rtView.
	rtView @ RTDraggableView .
	model := bpObj.
	
	"Execute the visulization"
	
	cv := A4BPUIBVFactory color.
	m interaction action:[ :n | n inspect].
	values := model lanes.
	m shape rectangle color:[: n | (n accept: cv)].
	m nodes: values forEach:[:nn | 
		"view shape label text: (nn aName size > 0 ifTrue:[ nn aName copyFrom:1 to:4] ifFalse:[nn aName])."
		m shape label text:[:n| n aName].
		m node:nn.
		"m shape rectangle 
		width:[: n | n metricCFCAbs * 10];
		height:[: n | ( n numberOfRelations  + 2 ) * 20];
		color:[: n | Color gray alpha: 1 - (1 / (n numberOfRelations + 1) )]."
		m shape glyph.
		m node: nn.
		m layout verticalLine.
		].
	
	eb := m edges.
	eb shape line color:(Color lightGray).
	eb connectToAll:#outFlows.
	circle:= m layout circle.
	circle radius: 200.
	m build.
	lb := RTLegendBuilder new view: m view.
	lb addText:'width: metric CFC Absolute'.
	lb addText:'height: metric CFC'.
	lb addText:'color: number Of Relations'.
	entities := Dictionary new.
	values do:[ :p | entities at: p class put: p class].
	entities do:[ :p |  lb addColor:(p new accept: cv) text: p name ].
	lb right.
	lb build.
	