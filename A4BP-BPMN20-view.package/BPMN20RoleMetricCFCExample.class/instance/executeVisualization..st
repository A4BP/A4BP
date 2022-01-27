visualization
executeVisualization: rtView
	| b model cv eb lb values entities circle|
	b:= self buildView: rtView.
	model := bpObj.
	
	"Execute the visulization"
	
	cv := A4BPUIBVFactory color.
	b interaction action:[ :n | n inspect].
	values := model lanes.
	b shape box color:[: n | (n accept: cv)].
	b nodes: values forEach:[:nn | 
		"view shape label text: (nn aName size > 0 ifTrue:[ nn aName copyFrom:1 to:4] ifFalse:[nn aName])."
		b shape labeled:[:n| n aName].
		b nodes: (Array with:nn).
		b shape box 
		width:[: n | n metricCFCAbs * 10];
		height:[: n | ( n numberOfRelations  + 2 ) * 20];
		color:[: n | Color gray alpha: 1 - (1 / (n numberOfRelations + 1) )].
		b nodes: (Array with:nn).
		b layout vertical.
		].
	
	eb := b lines.
	eb shape color:(Color lightGray).
	eb connectToAll:#outFlows.
	circle:= b layout circle.
	circle radius: 200.
	b build.
	"lb := RTLegendBuilder new view: b view.
	lb addText:'width: metric CFC Absolute'.
	lb addText:'height: metric CFC'.
	lb addText:'color: number Of Relations'.
	entities := Dictionary new.
	values do:[ :p | entities at: p class put: p class].
	entities do:[ :p |  lb addColor:(p new accept: cv) text: p name ].
	lb right.
	lb build."
	