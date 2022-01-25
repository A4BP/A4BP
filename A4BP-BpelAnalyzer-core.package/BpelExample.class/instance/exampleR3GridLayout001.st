examples-Roassal3d
exampleR3GridLayout001
	"self new exampleR3GridLayout001"
	| view elements soaCtx nodes elementv |
	soaCtx := SOAContext new.
	soaCtx := SOAContextTest soaWorldBase.
	view := R3View new.
	
	view camera translateUp: 5.
	view camera rotateDown:30.
	view camera translateBackward:30.
	"
	view camera translateUp: 20.
	view camera rotateX: 0.531 y: 18.372 z: 30.698.	
	nodes:=(1 to:100).
	"

	nodes:=soaCtx getChildrenNodes .	
	elementv := BPUIModelR3ElementBuilderVisitor new.
	elements  := OrderedCollection new.
	nodes do: [ :n |
		| el  |
		el := (n accept: elementv ).
		elements add: el.
		view add: el
	].
	
	
	elements do: [ :el |
		el model allRelations do:[ :m |
			|lstel|
			lstel:= view elements select:[:e| e model == m].
			lstel do:[:el2|
				view add: (R3LineShape blue elementFrom: el to: el2  ).
			]
		]	
	].	
	
	
	R3XZGridLayout on: elements.
	"
	R3XZGridLayout on: elements.
	R3XLineLayout on: elements.
	R3YAlign upOn: elements.
	"
	view addInteraction: R3MKControl.
	view open.
