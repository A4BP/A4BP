examples
"protocol: examples"
example01
	"
	self new example01
	"
	| parser processNames b |
	parser := BPParserBPEL new.
	processNames := BpelAnalyzerTest selectors reject: 
	[ :k | ((k beginsWith: #test) or: [ (k includes: $:) ])  or: [ k beginsWith: #wsdl ] ].
	
	processNames do: [ :k | parser parseString: (BpelAnalyzerTest new perform: k) ].
	
	b := ROMondrianViewBuilder new.
	b interaction
			popupText: #processName;
			action: #inspect.
			
	b shape rectangle
				width: #numberOfVariables;
				height: [ :p | p numberOfInvokes].
	b nodes: parser processes.
	b open