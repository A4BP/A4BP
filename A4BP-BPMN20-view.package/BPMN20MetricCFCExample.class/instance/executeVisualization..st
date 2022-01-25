visualization
executeVisualization: rtView
	|  cv  lb entities |
	cv := A4BPUIBVFactory color.
	
	"Execute the visulization"
	self executeViz: rtView.
	"Create the legend builder"
	lb := RTLegendBuilder new view: rtView.
	lb addText:'width:metric CFC Abs'.
	lb addText:'height: metric CFC'.
	lb addText:'color number Of Relations'.
	entities := Dictionary new.
	bpObj flowElements do:[ :p | entities at: p class put: p class].
	entities do:[ :p |  lb addColor:(p new accept: cv) text: p bpmn20Name ].
	lb right.
	lb build.
	