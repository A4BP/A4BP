examples
example02
	"
	self new example02
	"

	| parser processNames b |
	parser := BPParserBPEL new.
	processNames := BpelAnalyzerTest selectors reject: [ :k | ((k beginsWith: #test) or: [ (k includes: $:) ])  or: [ k beginsWith: #wsdl ] ].
	processNames do: [ :k | parser parseString: (BpelAnalyzerTest new perform: k) ].
	
	"Create de principal object to draw"	
	b := ROMondrianViewBuilder new.
	"generate information to draw for each iteration of nodes"
	b interaction
			popupText: #processName;
			action: #inspect.
	"add a new shape to paint a rectangle a set the instructions to define height and width"
	b shape rectangle
				height: [:v|v numberOfVariables * 10];
				width: [:v|v numberOfActivities * 10 ].
	"add the nodes to paint, int this case the node represent the process"
	b nodes: parser processes forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		b shape label.
		b shape rectangle withoutBorder.
		b node: 'variables' forIt: [ 
			b shape rectangle 
						size: [ :v | v numberOfInvokes];
						if: [ :v | '*Operation*' match: v variableName ] fillColor: Color red;
						if: [ :v | '*Account*' match: v variableName ] fillColor: Color blue.
			b nodes: p variables.
			b gridLayout ].
		b verticalLineLayout.
	].
	b gridLayout.
	b open