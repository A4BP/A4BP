getset
addLegendBuilderView: view values: values
	|legendBuilder entities cv |
	"
	cv := A4BPUIBVFactory colorVisitor.
	legendBuilder := RTLegendBuilder new view: view.
	entities := Dictionary new.
	values do:[ :p | entities at: p class put: p class].
	entities do:[ :p |  legendBuilder addColor:(p new accept: cv) text: p name ].
	legendBuilder right.
	legendBuilder build."
	