gateways
buildSVGShapeWithPath: p andScale: scale
	|aSVG|
	aSVG:= self buildSVGShape.
	aSVG svgPath: p.
	aSVG scaleBy: scale.
	^ aSVG.