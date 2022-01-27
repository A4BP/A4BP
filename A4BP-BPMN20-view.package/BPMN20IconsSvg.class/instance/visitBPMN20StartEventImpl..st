events
visitBPMN20StartEventImpl: aModel
	| p scale svg|
	p := 'm 86.873964,113.25507 21.609226,0 c 36.75139,0 66.33825,29.58687 66.33825,66.33826 l 0,11.60919 c 0,36.7514 -29.58686,66.33826 -66.33825,66.33826 l -21.609226,0 c -36.751394,0 -66.338257,-29.58686 -66.338257,-66.33826 l 0,-11.60919 c 0,-36.75139 29.586863,-66.33826 66.338257,-66.33826 z'.
	scale := aModel shape bounds width / 200.
	svg := self buildSVGShapeWithPath: p andScale: scale.
	^ self elementOn: aModel withsvgElement: svg.