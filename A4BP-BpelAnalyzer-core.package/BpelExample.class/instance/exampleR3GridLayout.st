examples-Roassal3d
exampleR3GridLayout
	"self new exampleR3GridLayout"
	| view elements soaCtx nodes colorv|
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
	
	nodes:=soaCtx lstBPProcess.	
	colorv :=BPUIBPModelColorBuilderVisitor new.	
	elements  := OrderedCollection new.
	nodes do: [ :n |
		| el r3cs mat|
		r3cs:=R3CubeShape new.
		r3cs height: n numberOfVariables .
		r3cs width: n numberOfPartnerLinks .
		r3cs depth: n numberOfActivities.
		mat := R3Material new diffuse: Color lightGray.
		mat specular: (n accept:colorv).
		mat shininess: 10.0.
		r3cs material: mat.
		"
		r3cs color:(n accept:colorv).
		"
		el := r3cs element.
		elements add: el.
		view add: el
	].
	
	R3XLineLayout on: elements.
	R3YAlign upOn: elements.
	"
	R3XZGridLayout on: elements.
	"
	view addInteraction: R3MKControl.
	view open.
