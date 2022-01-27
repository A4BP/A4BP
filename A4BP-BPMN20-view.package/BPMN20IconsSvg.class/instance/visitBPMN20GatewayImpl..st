gateways
visitBPMN20GatewayImpl: aModel
	| p scale svg|
	p := 'm -68.318504,177.5455 80,0 c 5.54,0 10,4.46 10,10 l 0,80 c 0,5.54 -4.46,10 -10,10 l -80,0 c -5.54,0 -10,-4.46 -10,-10 l 0,-80 c 0,-5.54 4.46,-10 10,-10 z'.
	"scale := aModel shape bounds width / 100."
	scale := 0.3.
	svg := self buildSVGShapeWithPath: p andScale: scale.
	^ self elementOn: aModel withsvgElement: svg.