examples-Roassal3d
exampleR3GridLayout002
	"self new exampleR3GridLayout002"
	| view elements soaCtx nodes elementv bigElement|
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
	elementv := BPUIModelR3ElementBuilderVisitor new.
	elements  := OrderedCollection new.
	
	bigElement := (R3CubeShape new elementOn:'bpProcess').
	
	nodes:=soaCtx allBPProcess.	
	nodes do: [ :n |
		| el  |
		el := (n accept: elementv ).
		elements add: el.
		bigElement add: el
	].
	view add:bigElement .
	
	bigElement := (R3CubeShape new elementOn:'bpWSDL').
	nodes:=soaCtx allBPWSDL.	
	nodes do: [ :n |
		| el  |
		el := (n accept: elementv ).
		elements add: el.
		el translateToX: 1 y: 5 z: 1.
		bigElement add: el
	].
	view add:bigElement .
	
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
