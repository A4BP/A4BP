activities
visitBPMN20TaskImpl: aModel
	| p scale svg|
	p := 'm 134.28572,129.50507 125.71428,0 c 26.90858,0 48.57143,21.66285 48.57143,48.57143 l 0,45.71428 c 0,26.90858 -21.66285,48.57143 -48.57143,48.57143 l -125.71428,0 c -26.90858,0 -48.571433,-21.66285 -48.571433,-48.57143 l 0,-45.71428 c 0,-26.90858 21.662853,-48.57143 48.571433,-48.57143 z'.
	"scale := aModel shape bounds width / 400."
	scale := 0.3.
	svg := self buildSVGShapeWithPath: p andScale: scale.
	^ self elementOn: aModel withsvgElement: svg.