visualization
executeVisualization: view
	| b cv p legendBuilder entities|
	"Starting with initialize variables"
	b := self buildView: view.
	cv := A4BPUIBVFactory colorVisitor.
	p:= bpObj.
	b view: view.
	self addInspect: b.
	"Do visualization"	
	self executeMondrianViz: b.
	"add the legend"
	"legendBuilder := RTLegendBuilder new view: view.
	entities := Dictionary new.
	p allChildrenNodes do:[ :n | entities at: n class put: n class].
	entities do:[ :n |  legendBuilder addColor:(n new accept: cv) text: n name ].
	legendBuilder right.
	legendBuilder build."
	
	