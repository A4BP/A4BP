visualization
executeVisualization: view
	| m model cv eb lb values entities circle|
	m := self buildView: view.
	model := bpObj.
	
	"Execute the visulization"
	
	cv := A4BPUIBVFactory color.
	m interaction action:[ :n | n inspect].
	values := model lanes.
	m shape box color:[: n | (n accept: cv)].
	m nodes: values forEach:[:nn | 
		"view shape label text: (nn aName size > 0 ifTrue:[ nn aName copyFrom:1 to:4] ifFalse:[nn aName])."
		m shape labeled:[:n| n aName].
		m nodes: (Array with:nn).
		"m shape rectangle 
		width:[: n | n metricCFCAbs * 10];
		height:[: n | ( n numberOfRelations  + 2 ) * 20];
		color:[: n | Color gray alpha: 1 - (1 / (n numberOfRelations + 1) )]."
		"m shape glyph."
		m nodes: ( Array with:nn).
		m layout vertical.
		].
	
	eb := m lines.
	eb shape color:(Color lightGray).
	eb connectToAll:#outFlows.
	circle:= m layout circle.
	circle radius: 200.
	m build.
	"lb := RTLegendBuilder new view: m view.
	lb addText:'width: metric CFC Absolute'.
	lb addText:'height: metric CFC'.
	lb addText:'color: number Of Relations'.
	entities := Dictionary new.
	values do:[ :p | entities at: p class put: p class].
	entities do:[ :p |  lb addColor:(p new accept: cv) text: p name ].
	lb right.
	lb build."
	