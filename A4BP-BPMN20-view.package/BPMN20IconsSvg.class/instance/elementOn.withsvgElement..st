events
elementOn: aModel withsvgElement: svg
	|shape label es|
	shape := RSShapeBuilder new.
	label := RSLabel new.
	label text: aModel aName.
	"shape add: svg.
	shape add: label."
	"svg scale:1."
	es := shape shapeOn: aModel.
	svg model: aModel.
	^ svg