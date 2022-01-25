visualization
executeVisualization: view
	| b cv ds lb|
	b := RTGrapher new.
	b view:view.
	cv := A4BPUIBVFactory colorVisitor.
	b extent: 400 @ 400.

	"do visualization"	
	self addInspect: b.
	
	"Data set 1"
	ds := RTData new.
	ds interaction popup.
	ds dotShape circle color: [:n | n accept:cv ];size:[:n|n size * 10].
	ds y: #numberOfActivities.
	ds points: bpObj process.
	b add: ds.
	"add the legend"
	lb := A4BPRTLegendBuilder new view: view.
	lb addText: 'y: Number of Activities'.
	lb addText: 'circle size: element size'.
	lb build.
	b build.