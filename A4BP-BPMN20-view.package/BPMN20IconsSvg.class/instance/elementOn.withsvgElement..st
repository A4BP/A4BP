events
elementOn: aModel withsvgElement: svg
	|shape label es|
	shape := RTCompositeShape new.
	label := RTLabel new.
	label text: aModel aName.
	shape add: svg.
	shape add: label.
	"svg scale:1."
	es := shape elementOn: aModel.
	^ svg elementOn:aModel.