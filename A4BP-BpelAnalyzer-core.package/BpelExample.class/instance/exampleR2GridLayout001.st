examples-Roassal2
exampleR2GridLayout001
	"self new exampleR2GridLayout001"
	| view elements soaCtx nodes elementv |
	soaCtx := SOAContext new.
	soaCtx := SOAContextTest soaWorldBase.
	view := RTView new.
	nodes:=soaCtx getChildrenNodes .
	elementv := BPUIModelR2ElementBuilderVisitor new.
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
				view add: (RTLine edgeFrom: el to: el2  ).
			]
		]	
	].	
	
	RTGridLayout on: elements.	
	view open.
