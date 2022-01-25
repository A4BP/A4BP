examples
example03
	"
	self new example03
	"

	| parser processNames v |
	parser := BPParserBPEL new.
	processNames := BpelAnalyzerTest selectors reject: [ :k | ((k beginsWith: #test) or: [ (k includes: $:) ])  or: [ k beginsWith: #wsdl ] ].
	processNames do: [ :k | parser parseString: (BpelAnalyzerTest new perform: k) ].
	
	"Create de principal object to draw"	
	v := ROMondrianViewBuilder new.
	"generate information to draw for each iteration of nodes"
	v interaction
		popupText: #processName;
			action: #inspect.
	"add a new shape to paint a rectangle a set the instructions to define height and width"
	v shape rectangle
				height: #numberOfVariables;
				width: [ :p | p numberOfInvokes].
	"add the nodes to paint, int this case the node represent the process"
	v nodes: parser processes forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		"v shape label."
		"v node: p processName."
		v shape rectangle withoutBorder.
		v verticalLineLayout.
	].
	v gridLayout.
	v open